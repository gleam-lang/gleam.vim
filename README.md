# gleam.vim

## Neovim users

This plugin is not needed if you are using Neovim. Instead
[enable Gleam LSP][lsp] (`lspconfig.gleam.setup({})`) and add the Gleam
[tree-sitter grammar][treesitter] (`:TSInstall gleam`). 

### LazyVim users

The [LazyVim config](https://github.com/LazyVim/LazyVim) has built-in support for Gleam in its [extras](http://www.lazyvim.org/extras/lang/gleam). To set it up using Lua in the standard config files, you can edit the `lazy.lua` file in your config folder (typically `~/.config/nvim/lua/config/lazy.lua`).

```lua
require("lazy").setup({
  spec = {
    { import = "lazyvim.plugins.extras.lang.gleam" }, -- <-- add this line here, without changing anything else
  },
```

Setting this up in a brand new LazyVim config would look something like this:

```lua
require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import/override with your plugins
    { import = "lazyvim.plugins.extras.lang.gleam" },
    { import = "plugins" },
  },
```



## Description

This is a Vim plugin that provides [Gleam][gleam] support to Vim.

- Syntax highlighting.
- Code snippets compatible with
  [UltiSnips](https://github.com/SirVer/ultisnips) and
  [vim-snipmate](https://github.com/garbas/vim-snipmate).

## Installation

### Using Vim Plug

1. Add `Plug 'gleam-lang/gleam.vim'` to `~/.vimrc` (for Vim).
2. Run `:PlugInstall`.

### Using Vundle

1. Add `Plugin 'gleam-lang/gleam.vim'` to `~/.vimrc` (for Vim).
2. Run `:PluginInstall`.

[gleam]: https://github.com/gleam-lang/gleam
[lsp]: https://github.com/neovim/nvim-lspconfig
[treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
