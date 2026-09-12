-- lua/inner-around/init.lua

local M = {}

-- 1. Define the selection logic for functions
local function select_function(inner)
	-- Start visual mode
	vim.cmd("normal! v")

	if inner then
		-- "Inner" logic: Jump to the next closing brace, then to its matching opening brace
		vim.cmd("normal! ]}vb[{")

		-- Shrink selection by one line top and bottom to exclude the braces themselves
		local line_start = vim.fn.line("'<")
		local line_end = vim.fn.line("'>")
		if line_end - line_start > 1 then
			vim.cmd("normal! jook")
		end
	else
		-- "Around" logic: Use ][ and [] to capture the whole function block
		vim.cmd("normal! ][v[]")
	end
end

-- 2. Wrap everything in a setup function to be triggered manually
function M.setup()
	-- Prevent multiple setups from overriding keymaps redundantly
	if M.initialized then
		return
	end
	M.initialized = true

	-- Around Function (af)
	vim.keymap.set({ "x", "o" }, "af", function()
		-- Lookahead: if not on a function, jump forward to the next one
		local pattern = [[\v^\s*(function|public|private|static|class)]]
		if not vim.fn.getline("."):match("{") then
			vim.fn.search(pattern, "W")
		end
		select_function(false)
	end, { desc = "Around function (No-Treesitter)" })

	-- Inner Function (if)
	vim.keymap.set({ "x", "o" }, "if", function()
		select_function(true)
	end, { desc = "Inner function (No-Treesitter)" })
end

return M
