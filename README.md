# AstroNvim Config

<!--toc:start-->

- [AstroNvim Config](#astronvim-config)
  - [About](#about)
  - [Requirements](#requirements)
  - [Features](#features)
    - [Auto completation with AI](#auto-completation-with-ai)
    - [Wakatime](#wakatime)
  - [Installing](#installing)
  - [Mappings](#mappings)
  - [Preview](#preview)
  - [Links](#links)
  <!--toc:end-->

## About

This is my personal AstroNvim config 🫣  
Suggestions for improvements will be appreciated. Make florks at will...

## Requirements

It's the same requirements as [AstroNvim](https://astronvim.com/#-requirements).

- [lazydocker](https://github.com/jesseduffield/lazydocker) docker ui toggle
  terminal (`leader + td`) (optional)

## Features

### Auto completation with AI

This config uses Codeium to autocomplete your code. You will need a Codeium
account and api key to do this.

For more information about that see the
[Exafunction/codeium.vim](https://github.com/Exafunction/codeium.vim) plugin documentation.

To disable the feature comment out or remove this line in the
`plugins/community.lua` file:

```lua
-- Comment out our remove this line
-- { import = "astrocommunity.completion.codeium-vim" },
```

### Wakatime

To use Wakatime needs to define Wakatime
[API key](https://wakatime.com/settings#apikey)
and to be installed [wakatime-cli](https://github.com/wakatime/wakatime-cli).
More information on [wakatime/vim-wakatime](https://github.com/wakatime/vim-wakatime).

To disable the feature comment out or remove this line in the
`plugins/community.lua` file:

```lua
-- Comment out our remove this line
-- { import = "astrocommunity.media.vim-wakatime" },
```

## Installing

Make a backup of your current nvim folder

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

Clean neovim folders (Optional but recommended)

```bash
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

Clone AstroNvim into `~/.config/nvim`

```bash
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

Clone my config into `~/.config/nvim/lua/user`

```bash
git clone --depth 1 https://github.com/gabrielscaranello/astronvim-config ~/.config/nvim/lua/user
```

Remove the `.git` folder (optional)

```bash
rm -rf ~/.config/nvim/lua/user/.git
```

Start Neovim

```bash
nvim
```

## Mappings

This configuration has all AstroNvim mappings, you can check them out [here](https://astronvim.com/Basic%20Usage/mappings).

| Action                           | Mappings         |
| -------------------------------- | ---------------- |
| Save file                        | `Ctrl + s`       |
| LSP Restart (if LSP is attached) | `Leader + lk`    |
| No Highlight                     | `Leader + space` |
| ToggleTerm lazydocker            | `Leader + td`    |
| ToggleTerm lazygit               | `Leader + gg`    |
| Open Diffview                    | `Leader + gD`    |
| Close Diffview                   | `Leader + gx`    |
| Next buffer                      | `Shift + l`      |
| Previous buffer                  | `Shift + h`      |
| Call : command                   | `;`              |

## Preview

![Preview](./assets/preview.png)

> Using [kitty terminal](https://sw.kovidgoyal.net/kitty/) and [JetBrains Mono NF](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono/Ligatures).

## Links

- [AstroNvim](https://astronvim.com/)
- [My dotfiles](https://github.com/gabrielscaranello/dotfiles)
