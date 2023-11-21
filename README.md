# NOTIM-nvim
## a simple note taking tool
####  Notim is a preconfigured neovim setup specifically designed for note taking
![screenshot of the dashboard](./images/ScreenshotDashboard.png)
![screenshot of bookmark plugin](./images/ScreenshotBookmarks.png)
![screenshot of bookmark plugin](./images/ScreenshotLazyPluginList.png)
# instalation 
-- NOTE this has not been tested on macos, I think it would probably work

### default install
clone notim in your config folder and open neovim
```
git clone https://github.com/LunaKITPI/notim-nvim.git ~/.config/nvim/
nvim
```
### instalation while keeping old config
now for many ditching your old config might not be nice especially since notim is not rly made for programing, and there is a solution for that!
1. clone notim into a new ~/.conifig/notim folder
```
git clone https://github.com/LunaKITPI/notim-nvim.git ~/.config/notim/
```
2. set an alias to use this config
now this may be different depending on which shell you use
#### fish
in your cli type:
```
alias --save nt="nvim -u ~/.config/notim/init.lua"
```

#### zsh/bash
add this line to your .bashrc/.zshrc
```
alias nt="nvim -u ~/.config/notim/init.lua"
```
#### last step
move the lua folder in from notim to your nvim config folder, if you already have a /lua folder in your nvim config, just move the contents to that lua file, ( this is the reason why the files are all prefixed with notim- )
#### now just open neovim by typing "nt"
-- NOTE:
    
    firs startup will make it look like noerg failed to install, this is due to it depending on treesitter, restarting neovim will correctly install this
    first time opening a .norg file will result in an error while treesitter install the parser
### features
- plugins chosen for ease of use
- lightweight
- extensible with your own plugins & configurations

notim is made to comfortably take notes in both markdown and norg [(neorg)](https://github.com/nvim-neorg/neorg) file formats
# who is this made for?
ppl like me who have a pretty underpowered laptop, are student, and/or just love using neovim 
as a note taking tool.
## why was this made?
this was originally a project made so I can run something like emacs org-mode but on my underpowerd laptop.
eventually I experimented with several plugins and ended up with a config I felt really comfortable using.
This repo is just here to share a personal configuration I made.
# Plugin list
sorry if I forget any plugins
show the developers of these plugins support!
   - [bookmarks.nvim](https://github.com/crusj/bookmarks.nvim)
   - [buffer_manager.nvim](https://github.com/j-morano/buffer_manager.nvim)
   - [dashboard.nvim](https://github.com/nvimdev/dashboard-nvim)
   - [telescope](https://github.com/nvim-telescope/telescope.nvim)
   - [kanagawa,nvim](https://github.com/rebelot/kanagawa.nvim)
   - [lazy.nvim](https://github.com/folke/lazy.nvim)
   - [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
   - [neorg](https://github.com/nvim-neorg/neorg)
   - [noice.nvim](https://github.com/folke/noice.nvim)
   - [nui.nvim](https://github.com/MunifTanjim/nui.nvim)
   - [nvim-markdown](https://github.com/ixru/nvim-markdown)
   - [nvim-notify](https://github.com/rcarriga/nvim-notify)
   - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
   - [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
   - [oil.nvim](https://github.com/stevearc/oil.nvim)
   - [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
   - [ripgrep](https://github.com/rinx/nvim-ripgrep)
   - [which-key.nvim](https://github.com/folke/which-key.nvim)
   - [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
   - [Markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
   - 
## quick start
if you already know how neorg & markdown work
### neorg
to start press the keybind <Space>nn , this should open a .norg file in a new directory ~/notim ( or C:\\users\youruse\notim ) from there on you can start typing
### markdown
create markdown file in a folder of your choosing, then open said makrdown file and press <Space>bm to bookmark it, now whenever starting notim, you can press <Space><Return> to view all your bookmarks and thus quickly open this file
# side note
hi everyone, this is my first time making my own neovim config and also my first time making a github repo.
If I did something that isn't rly "the standard" or if you notice I could've done something 
better feel free to tell me via an issue or something like that! All the help is apreciated!
