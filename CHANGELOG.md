# CHANGELOG

## [0.4.0] - 2024-07-06

### Added

Add Elixir and Erlang using asdf.

New Neovim plugins:

- Mason
- None-ls
- Mason-lspconfig
- Mason-null-ls
- Nvim-lspconfig
- Telescope-ui-select
- Trouble
- Cmp-luasnip
- Luasnip
- Nvim-cmp-lsp
- Nvim-cmp

Neovim suport for LSP servers:

- `elixirls`
- `tsserver`
- `lua_ls`
- `dockerls`
- `nextls`
- `css_variables`
- `cssls`

Neovim autocomplete tools:

- `luasnip`

Neovim autocomplete and code actions using LSP.

Neovim formatting tools:

- `mix`
- `prettier`
- `stylua`
- `surface`

Neovim diagnostic tools:

- `commitlint`
- `hadolint`
- `markdownlint`

### Changed

* Remove Ruby and Rust.
* Change the safe directory from /home to * in the `.gitconfig` file.

## [0.3.1] - 2024-06-15

### Added

* NodeJS
* NPM

### Changed

* Install NodeJS and NPM using Alpine instead of asdf.

### Fixed

* NodeJS and NPM does not work.

## [0.3.0] - 2024-06-14

### Added

Add the plugins below to Neovim:

* Telescope
* Noice
* Neo-tree
* Lualine
* Barbar
* Which Key
* Lazygit
* Catppuccin theme
* Gitsigns
* Lazy.nvim
* Nvim-treesitter

### Changed

* Bind the .local/ directory between the host and the container.

## [0.2.0] - 2024-06-08

### Added

* Exa
* Dust
* Atuin
* Lazygit
* Zellij
* Bat

### Changed

* Use `ls` as an alias to Exa
* Use `cat` as an alias to Bat

### Fixed

* Add asdf to PATH inside `setup` function

## [0.1.0] - 2024-06-05

### Added

* Git
* GitHub CLI
* asdf
  * Rust
  * Ruby
  * NodeJS
* Neovim
* Fish shell
