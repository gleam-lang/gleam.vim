# gleam.vim

## Neovim users

This plugin is not needed if you are using Neovim. Instead enable Gleam LSP
(`lsp_config.gleam.setup({})`) and add the Gleam tree-sitter grammar (`:TSIntall
gleam`).

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
