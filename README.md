# inner-around.nvim

A lightweight, simple, and dependency-free Neovim plugin written in Lua that provides text objects for **Inner** (`if`) and **Around** (`af`) functions without relying on Treesitter. 

It uses native Vim movements (`[[`, `]]`, etc.) to quickly select or operate on function bodies and structures.

## 🚀 Features
* **`if` (Inner Function):** Selects everything *inside* the function braces (`{ ... }`), automatically trimming the top and bottom whitespace lines.
* **`af` (Around Function):** Selects the entire function block, including the function signature (`public function name()`, `class`, etc.) and the braces.
* **Smart Lookahead:** If your cursor isn't directly on a function block when you press `af`, it automatically searches forward for the next one.
* **No Treesitter required:** Perfect for lightweight setups or languages where Treesitter isn't fully configured.

## 📦 Installation

```lua
vim.pack.add({
	"https://github.com/janecodelife/inner-around.nvim",
})

require("inner-around").setup()
```

## ⌨️ Mappings

The plugin maps text objects in both **Visual** (`x`) and **Operator-pending** (`o`) modes.

| Keymap | Mode | Description |
|--------|------|-------------|
| `vaf`  | Visual | Select around the function |
| `vif`  | Visual | Select inside the function |
| `daf`  | Operator | Delete around the function |
| `dif`  | Operator | Delete inside the function |
| `yaf`  | Operator | Yank (copy) around the function |
| `yif`  | Operator | Yank (copy) inside the function |
| `caf`  | Operator | Change around the function |
| `cif`  | Operator | Change inside the function |

## 🛠️ Requirements
* Neovim 0.10+ (Fully compatible with **Neovim 12**)

