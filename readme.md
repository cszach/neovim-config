# neovim-config

My NeoVim configuration.

## 📂 Files

- `init.vim` is the main configuration file.
- `coc.vim` configures keybindings for [CoC][coc] (Conqueror of Completion).

[coc]: https://github.com/neoclide/coc.nvim

## 🏃 Basics

- Tabs are 2 in width and expand to space characters.
  - However, supported files will be formatted with configured formatters.
- There is a colored column at the 81st column. Helpful for limiting line
  length.
- Other than that, mostly stuff you'd expect (auto indent, show line numbers,
  show matching parens, etc).
- Plugins are managed with [vim-plug][vim-plug].

[vim-plug]: https://github.com/junegunn/vim-plug

## ⌨️ Keyboard shortcuts

> Note: The `<leader>` key for me is the backslash (`\`).

### Normal mode

#### NERDTree

- Ctrl + N: Open [NERDTree][nerdtree] (like VSCode's Explorer).
- Ctrl + T: Toggle NERDTree.
- Ctrl + F: Show the opened file in NERDTree.

#### CoC

- \[g: Go to previous warning/error.
- \]g: Go to next warning/error.
- gd: Go to the hovered symbol's definition.
- gy: Go to the symbol's type definition.
- gi: Go to the symbol's implementation.
- gr: Show the symbol's references.
- Shift + K: Show documentation of the symbol under the cursor.
- `<leader>rn`: Rename symbol.
- `<leader>ac`: Apply/show code actions at the cursor.
- `<leader>as`: Apply/show code actions for the whole file.
- `<space>a`: Show diagnostics.
- `<space>e`: Show installed CoC extensions.
- `<space>c`: Show CoC commands.
- `<space>o`: Show the current file's outline.
- `<space>s`: Search workspace symbols.

#### Telescope

- `<leader>ff`: Find files.
- `<leader>fg`: Search for a string in the current workspace, respecting
  `.gitignore`.
- `<leader>fb`: Find buffers.
- `<leader>fh`: Find help tags.

#### Icon picker

- `<leader><leader>i`: Browse icons and insert the selected one.
- `<leader><leader>y`: Browse icons and yank the selected one.

### Visual mode

- `<leader>f`: Format the selection using CoC.
- `<leader>a`: Apply/show code actions for the selection.

## ✨ Features

- AI code assistant.
- Code diagnostics and code actions.
- Format on demand with `:Neoformat` (neoformat) or `:Format` (CoC).
- Format on save ([neoformat][neoformat]).

## 🧩 Plugins

- [**copilot**][copilot]: GitHub Copilot for AI code completion.
- [**vim-snippets**][vim-snippets]: Snippets for various languages.
- [**onedark**][onedark.vim]: One Dark theme for NeoVim (although I am not
  currently using it).
- [**vim-startify**][vim-startify]: A fancy start screen for NeoVim.
- [**coc.nvim**][coc]: Conqueror of Completion for code completion and LSP-based
  code navigation.
- [**nvim-colorizer.lua**][nvim-colorizer]: Colorize hex codes in files.
- [**plenary.nvim**][plenary.nvim]: A dependency of
  [telescope.nvim][telescope.nvim].
- [**telescope.nvim**][telescope.nvim]: A fuzzy finder for files, buffers, code,
  help tags, and more.
- [**nvim-treesitter**][nvim-treesitter]: Treesitter for better syntax
  highlighting.
- [**nerdtree-visual-selection**][nerdtree-visual-selection]: Provides
  functionality to delete, rename, and move files in the [NERDTree][nerdtree].
- [**nerdcommenter**][nerdcommenter]: A plugin for commenting code.
- [**vim-wasm**][vim-wasm]: Syntax highlighting for WebAssembly.
- [**rust.vim**][rust.vim]: Rust syntax highlighting, error checking, rustfmt,
  and more.
- [**vim-devicons**][vim-devicons]: File type icons for [NERDTree][nerdtree].
- [**neoformat**][neoformat]: A plugin for formatting code.
- [**nerdtree**][nerdtree]: A tree explorer for browsing files.
- [**ultisnips**][ultisnips]: Snippet engine, goes with
  [vim-snippets][vim-snippets].
- [**base16.nvim**][base16.nvim]: Provides a lot of Base16 themes.
- [**dressing.nvim**][dressing.nvim]: Improves default vim.ui interfaces.
- [**vim-airline**][vim-airline]: A status line for NeoVim.
- [**vim-airline-themes**][vim-airline-themes]: Themes for
  [vim-airline][vim-airline].
- [**vim-wakatime**][vim-wakatime]: [WakaTime][wakatime] plugin for tracking
  time spent in NeoVim.
- [**transparent.nvim**][transparent.nvim]: Makes NeoVim transparent e.g. so
  the terminal wallpaper may be visible.
- [**icon-picker.nvim**][icon-picker.nvim]: Browse and insert icons, symbols,
  and emojis.

[copilot]: https://github.com/github/copilot
[vim-snippets]: https://github.com/honza/vim-snippets
[onedark.vim]: https://github.com/joshdick/onedark.vim
[vim-startify]: https://github.com/mhinz/vim-startify
[coc]: https://github.com/neoclide/coc.nvim
[nvim-colorizer]: https://github.com/norcalli/nvim-colorizer.lua
[plenary.nvim]: https://github.com/nvim-lua/plenary.nvim
[telescope.nvim]: https://github.com/nvim-telescope/telescope.nvim
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[nerdtree-visual-selection]: https://github.com/PhilRunninger/nerdtree-visual-selection
[nerdcommenter]: https://github.com/preservim/nerdcommenter
[vim-wasm]: https://github.com/rhysd/vim-wasm'
[rust.vim]: https://github.com/rust-lang/rust.vim
[vim-devicons]: https://github.com/ryanoasis/vim-devicons
[neoformat]: https://github.com/sbdchd/neoformat
[nerdtree]: https://github.com/scrooloose/nerdtree
[ultisnips]: https://github.com/SirVer/ultisnips
[base16.nvim]: https://github.com/Soares/base16.nvim
[dressing.nvim]: https://github.com/stevearc/dressing.nvim
[vim-airline]: https://github.com/vim-airline/vim-airline
[vim-airline-themes]: https://github.com/vim-airline/vim-airline-themes
[vim-wakatime]: https://github.com/wakatime/vim-wakatime
[transparent.nvim]: https://github.com/xiyaowong/transparent.nvim
[icon-picker.nvim]: https://github.com/ziontee113/icon-picker.nvim

[wakatime]: https://wakatime.com

## ⚙️ Plugin configurations

### Startify

![Startify screenshot showing NVIM in large ASCII letters and a cowsay
message.](./img/startify.png)

[Startify][vim-startify] will display the text `NVIM` in large isometric letters
using ASCII and a random cowsay message. Requires `figlet` and `cowsay` to be
installed.

### Conqueror of Completion

Most of the configuration for [CoC][coc] is in `coc.vim`, which sets a lot of
the [keyboard shortcuts](#keyboard-shortcuts).

## 🪖 CoC plugins

CoC plugins enable syntax highlighting, inlay hints, code completion, code
formatting, and more.

The CoC plugins that I have installed as of this commit are:

- coc-tailwindcss
- coc-sonarlint
- coc-marketplace
- coc-html
- coc-tsserver
- coc-rust-analyzer
- coc-json
- coc-java
- coc-css
- coc-clangd

Browsing and installing more plugins can be done with `:CocList marketplace`,
but coc-marketplace must be installed first:
```
:CocInstall coc-marketplace
```
