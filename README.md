# inner-around.nvim

[![Follow on X](https://img.shields.io/badge/Follow-@janecodelife-000000?style=for-the-badge&logo=x)](https://x.com/janecodelife)
[![Subscribe on YouTube](https://img.shields.io/badge/Subscribe-@JaneCodeLife-FF0000?style=for-the-badge&logo=youtube)](https://www.youtube.com/@JaneCodeLife)

A lightweight, simple, and dependency-free Neovim plugin written in Lua that provides text objects for **Inner** (`if`) and **Around** (`af`) functions without relying on Treesitter. 

It uses native Vim movements (`[[`, `]]`, etc.) to quickly select or operate on function bodies and structures.

---

## 🚀 Features
* **`if` (Inner Function):** Selects everything *inside* the function braces (`{ ... }`), automatically trimming the top and bottom whitespace lines.
* **`af` (Around Function):** Selects the entire function block, including the function signature (`public function name()`, `class`, etc.) and the braces.
* **Smart Lookahead:** If your cursor isn't directly on a function block when you press `af`, it automatically searches forward for the next one.
* **No Treesitter required:** Perfect for lightweight setups or languages where Treesitter isn't fully configured.

---

## 📦 Installation

```lua
vim.pack.add({
	"https://github.com/janecodelife/inner-around.nvim",
})

require("inner-around").setup()
```

## Video 📺

<p align="center">
  <img src="assets/make_http_request_in_blink_without_leaving_buffer.gif" alt="make_http_request_in_blink_without_leaving_buffer-video" width="100%">
</p>

or in 

- **YouTube**: [https://www.youtube.com/watch?v=jBUKpSBhoxI](https://www.youtube.com/watch?v=jBUKpSBhoxI) 

--- 

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

---

##  If Have A Question🤝 (Contact Me)

I will be there i am answer to all messages

- **X (Twitter)**: [https://x.com/janecodelife](https://x.com/janecodelife)
- **YouTube**: [https://www.youtube.com/@JaneCodeLife](https://www.youtube.com/@JaneCodeLife) 
- **Email**: [janecodelife@gmail.com](janecodelife@gmail.com)

---

## 🔗 My Other Plugins

Check out my other open-source tools to supercharge your Neovim environment:
- **[livewire-secure-properties](https://github.com/janecodelife/livewire-secure-properties)** - Secure livewire app properties by default and void headache.
- **[todo-tracker.nvim](https://github.com/janecodelife/todo-tracker.nvim)** - Assign and list app todos in a blink
- **[folders-bookmark.nvim](https://github.com/janecodelife/folders-bookmark.nvim)** - Bookmark folders and accessing them by keymap in a blink
- **[copy-history.nvim](https://github.com/janecodelife/copy-history.nvim)** - Access your copy (Yank) history and paste it again by 1 click in a blink.
- **[rest-client.nvim](https://github.com/janecodelife/rest-client.nvim)** - run http request from anywhere in a blink

---

## Upcoming 🚀 (Stay Tuned!)

### The Ultimate Neovim Config for Modern Web & Laravel Devs ⚡

I am currently cooking a comprehensive guide and boilerplate configuration on **How to turn Neovim into a (Powerful) IDE** explicitly optimized for:

- **Backend & Frameworks**: PHP (Intelephense) & Full Laravel & Livewire Integration (With Preformance)
- **Frontend & Tooling**: HTML, CSS, JavaScript, TypeScript, and Livewire SFCs
- **Speed**: Blazing fast autocompletion, lightning-speed code navigation, and fuzzy finding.

