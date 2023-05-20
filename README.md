# AstroNvim Config

This is my personal AstroNvim config 🫣  
Suggestions for improvements will be appreciated. Make florks at will...

## Install AstroNvim

##### Make a backup of your current nvim folder

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

##### Clean neovim folders (Optional but recommended)

```bash
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

##### Clone AstroNvim

```bash
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

## Load my config

##### Clone config

```bash
https://github.com/gabrielscaranello/astronvim-config.git ~/.config/nvim/lua/user
```

##### Remove the `.git` folder (optional)

```bash
rm -rf ~/.config/nvim/lua/user/.git
```

##### Start Neovim

```bash
nvim
```

## Links

- [AstroNvim](https://astronvim.com/)
- [My dotfiles](https://github.com/gabrielscaranello/dotfiles)
- [My Arch install guide](https://github.com/gabrielscaranello/arch)
