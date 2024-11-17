# neovim-config

My NeoVim configuration.

## ✨ Features

- AI code assistant.
- Code completion, navigation, and tree-sitter syntax highlighting.
- Code diagnostics and code actions.
- Code snippets.
- Emoji and symbol picker.
- Format on save.
- Fuzzy finder.
- Lots of themes.
- And more!

## Table of contents

- [📂 Files](#-files)
- [🏃 Basics](#-basics)
- [⌨️ Keyboard shortcuts](#%EF%B8%8F-keyboard-shortcuts)
  - [Normal mode](#normal-mode)
    - [NERDTree](#nerdtree)
    - [CoC](#coc)
    - [Telescope](#telescope)
    - [Icon picker](#icon-picker)
  - [Visual mode](#visual-mode)
- [🧩 Plugins](#-plugins)
  - [Post-installation](#post-installation)
- [⚙️ Plugin configurations](#%EF%B8%8F-plugin-configurations)
  - [Startify](#startify)
  - [CoC](#coc-1)
- [🪖 CoC plugins](#-coc-plugins)

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
- Theme: `google` from [base16.nvim][base16.nvim].

[vim-plug]: https://github.com/junegunn/vim-plug

## ⌨️ Keyboard shortcuts

> [!NOTE]
> The `<leader>` key for me is the backslash (`\`).

> [!NOTE]

> `+` means the two keys are to be pressed together.

> [!NOTE]
> Capital letters do not indiciate that the Shift key needs to be pressed.

| Shortcut | Description              |
| :------: | :----------------------- |
| `:noa w` | Save without formatting. |
| Ctrl + L | `:nohl`.                 |

#### Tabs

|      Shortcut      | Description         |
| :----------------: | :------------------ |
|     Ctrl + W T     | New tab.            |
| Ctrl + Left arrow  | Go to previous tab. |
| Ctrl + Right arrow | Go to next tab.     |

#### nvim-tree

| Shortcut  | Description                                      |
| :-------: | :----------------------------------------------- |
| Ctrl + N  | Open [nvim-tree][nvim-tree.lua].                 |
| Ctrl + T  | Toggle nvim-tree.                                |
| Ctrl + F  | Show opened file in nvim-tree.                   |
| Ctrl + ]  | Set current folder as root folder.               |
|   Enter   | Open file/folder.                                |
|     A     | Create file (or directory if name ends with `/`. |
| Ctrl + R  | Rename.                                          |
|     C     | Copy.                                            |
|     X     | Cut.                                             |
|     P     | Paste.                                           |
|     D     | Delete.                                          |
|     -     | Go to parent directory.                          |
|     Y     | Copy name.                                       |
| Shift + Y | Copy relative path.                              |
|    GY     | Copy absolute path.                              |
| Shift + R | Refresh.                                         |

More shortcuts can be found in `:h nvim-tree-mappings-default`.

#### CoC

|    Shortcut    | Description                                        |
| :------------: | :------------------------------------------------- |
|      \[ G      | Go to previous warning/error.                      |
|      \] G      | Go to next warning/error.                          |
|      G D       | Go to the hovered symbol's definition.             |
|      G Y       | Go to the symbol's type definition.                |
|      G I       | Go to the symbol's implementation.                 |
|      G R       | Show the symbol's references.                      |
|   Shift + K    | Show documentation of the symbol under the cursor. |
| `<leader>` R N | Rename symbol.                                     |
| `<leader>` A C | Apply/show code actions at the cursor.             |
| `<leader>` A S | Apply/show code actions for the whole file.        |
|  `<space>` A   | Show diagnostics.                                  |
|  `<space>` E   | Show installed CoC extensions.                     |
|  `<space>` C   | Show CoC commands.                                 |
|  `<space>` O   | Show the current file's outline.                   |
|  `<space>` S   | Search workspace symbols.                          |

More shortcuts can be found in [`coc.vim`](coc.vim).

#### Telescope

|    Shortcut    | Description                               |
| :------------: | :---------------------------------------- |
| `<leader>` F F | Find files.                               |
| `<leader>` F G | Workspace grep (respecting `.gitignore`). |
| `<leader>` F B | Find buffers.                             |
| `<leader>` F H | Find help tags.                           |

#### vim-surround

| Shortcut  | Description                                                   |
| :-------: | :------------------------------------------------------------ |
| Y S I W " | Surround with double quotes (works with any character).       |
|  C S ' "  | Replace single quotes with double (works with any character). |
|   D S "   | Delete surrounding quotes (works with any character).         |

#### Icon picker

|       Shortcut       | Description                               |
| :------------------: | :---------------------------------------- |
| `<leader><leader>` I | Browse icons and insert the selected one. |
| `<leader><leader>` Y | Browse icons and yank the selected one.   |

### Visual mode

|   Shortcut   | Description                                |
| :----------: | :----------------------------------------- |
| `<leader>` F | Format the selection using CoC.            |
| `<leader>` A | Apply/show code actions for the selection. |

#### vim-surround

| Shortcut | Description                                                       |
| :------: | :---------------------------------------------------------------- |
|   S "    | Surround selection with double quotes (works with any character). |

## 🧩 Plugins

- [**vim-gitgutter**][vim-gitgutter]: A Vim plugin which shows git diff markers
  in the sign column and stages/previews/undoes hunks and partial hunks.
- [**neogen**][neogen]: A better annotation generator. Supports multiple
  languages and annotation conventions.
- [**copilot.vim**][copilot.vim]: GitHub Copilot for AI code completion.
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
- [**nvim-tree**][nvim-tree.lua]: A file explorer tree for neovim written in lua
- [**nvim-web-devicons**][nvim-web-devicons]: lua fork of `vim-web-devicons` for
  neovim
- [**nvim-treesitter**][nvim-treesitter]: Treesitter for better syntax
  highlighting.
- [**nerdcommenter**][nerdcommenter]: A plugin for commenting code.
- [**vim-wasm**][vim-wasm]: Syntax highlighting for WebAssembly.
- [**ultisnips**][ultisnips]: Snippet engine, goes with
  [vim-snippets][vim-snippets].
- [**base16.nvim**][base16.nvim]: Provides a lot of Base16 themes.
- [**dressing.nvim**][dressing.nvim]: Improves default vim.ui interfaces.
- [**vim-fugitive**][vim-fugitive]: A Git wrapper so awesome, it should be
  illegal
- [**vim-surround**][vim-surround]: Delete/change/add
  parentheses/quotes/XML-tags/much more with ease.
- [**vim-airline**][vim-airline]: A status line for NeoVim.
- [**vim-airline-themes**][vim-airline-themes]: Themes for
  [vim-airline][vim-airline].
- [**vim-wakatime**][vim-wakatime]: [WakaTime][wakatime] plugin for tracking
  time spent in NeoVim.
- [**transparent.nvim**][transparent.nvim]: Makes NeoVim transparent e.g. so
  the terminal wallpaper may be visible.
- [**icon-picker.nvim**][icon-picker.nvim]: Browse and insert icons, symbols,
  and emojis.

[vim-gitgutter]: https://github.com/airblade/vim-gitgutter
[neogen]: https://github.com/danymat/neogen
[copilot.vim]: https://github.com/github/copilot.vim
[vim-snippets]: https://github.com/honza/vim-snippets
[onedark.vim]: https://github.com/joshdick/onedark.vim
[vim-startify]: https://github.com/mhinz/vim-startify
[coc]: https://github.com/neoclide/coc.nvim
[nvim-colorizer]: https://github.com/norcalli/nvim-colorizer.lua
[plenary.nvim]: https://github.com/nvim-lua/plenary.nvim
[telescope.nvim]: https://github.com/nvim-telescope/telescope.nvim
[nvim-tree.lua]: https://github.com/nvim-tree/nvim-tree.lua
[nvim-web-devicons]: https://github.com/nvim-tree/nvim-web-devicons
[nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[nerdcommenter]: https://github.com/preservim/nerdcommenter
[vim-wasm]: https://github.com/rhysd/vim-wasm
[ultisnips]: https://github.com/SirVer/ultisnips
[base16.nvim]: https://github.com/Soares/base16.nvim
[dressing.nvim]: https://github.com/stevearc/dressing.nvim
[vim-fugitive]: https://github.com/tpope/vim-fugitive
[vim-surround]: https://github.com/tpope/vim-surround
[vim-airline]: https://github.com/vim-airline/vim-airline
[vim-airline-themes]: https://github.com/vim-airline/vim-airline-themes
[vim-wakatime]: https://github.com/wakatime/vim-wakatime
[wakatime]: https://wakatime.com
[transparent.nvim]: https://github.com/xiyaowong/transparent.nvim
[icon-picker.nvim]: https://github.com/ziontee113/icon-picker.nvim

### Post-installation

The following plugins require setting up after installation:

- copilot.vim: `:Copilot setup`
- vim-wakatime: `:WakaTimeApiKey`

## ⚙️ Plugin configurations

### Startify

![Startify screenshot showing NVIM in large ASCII letters and a cowsay
message.](./img/startify.png)

[Startify][vim-startify] will display the text `NVIM` in large isometric letters
using ASCII and a random cowsay message. Requires `figlet` and `cowsay` to be
installed.

### CoC

Most of the configuration for CoC is in `coc.vim`, which sets a lot of the
[keyboard shortcuts](#-keyboard-shortcuts).

## 🪖 CoC plugins

CoC plugins enable syntax highlighting, inlay hints, code completion, code
formatting, and more.

The CoC plugins that I have installed as of this commit are:

- coc-tailwindcss
- coc-sonarlint
- coc-prettier
- coc-marketplace
- coc-html
- coc-tsserver
- coc-toml
- coc-rust-analyzer
- coc-json
- coc-java
- coc-glslx
- coc-css
- coc-clangd

Browsing and installing more plugins can be done with `:CocList marketplace`,
but coc-marketplace must be installed first:

```
:CocInstall coc-marketplace
```
