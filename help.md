# NOTIM
## note taking in neovim
1. [syntax](#syntax)
2. [bookmarks](#bookmarks)
3. [file managing](#file managing)
4. [used plugins](#used plugins)
### syntax
   NOTIM uses two main file formats to take notes in, 
   - Markdown
   - [norg](https://github.com/nvim-neorg/neorg)
   I reccomend researching the documentation of these 2 for more information on these syntaxes but I will briefly go over the basiscs
   --NOTE : the creater of the neorg plugin (Vhyrro) made a video series explaining neorg and the norg file format in depth, so I recomend watching that for more info.
	    I reccomend watching that since this document will only go over the basics of the norg syntax even though neorg has many more features then just its syntax
#### Markdown
   check out the nvim-markdown documentation for more info, it's the implementation used in NOTIM
##### headers
      Hashtags (#) are headers, the amount of hashtags change the size of these headers ( though this is not visible in notim due to it being a terminal window )
##### lists
      adding a dash (-) at the start of a line makes a list, you can also start lists using a numeric followd by a bot ( 1. )
##### linking
      to Link to files, sites you can use one of two options
      1. write out a [link name](link itself)
      2. enter normal mode and press ENTER to turn it into a link.
      to link to a header you can only write it out,  like so: [link name](#header name)
##### check boxes
      just like links, there are 2 options to make a checkbox in notim
      1. write it out at the start of a sentence with square brackets and a space in the middle ( [ ] ) 
      2. in normal mode press ctrl+p to turn that line into a checkbox,
      this shortcut can also toggle boxes from finished to not finished
   this is all the info I will be giving over markdown, view markdown documentation for more information
#### norg
   the syntax used in norg is simaler to org mode but still has quite a bit of differences
   !! KEEP IN MIND: norg is a very young format so it's not as full featured as markdown but I still believe that it's an amazing note taking format
   also the default workspace is set to ~/notim/main.norg ( view noerg documentation for more info about workspaces )
##### headers
      header are created by prefixing lines with an asteriks (*)
      the more asteriks the more indentation this header will have, norg will auto indent the lines following the header
##### lists
      adding a dash (-) to the start makes it a part of a list, though numerical lists aren't supported ( yet )
###### where auto list?
   you may notice that when writing a list in a norg file pressing enter doesn't automatically add a new list component, this is the expected behviour, to add a new list component press ALT+ENTER.
   this will also add a new headerif you aren't on a list
##### linking
      in norg you can create links using curly brackets { } addign square brackets infornt or behind it makes whatever is in the brackets a link
      to link to a header you just start with an asteriks
      to link to a file you need to put the local file path between :filenamehere:
      so for example -> {:newfile:} | clicking this link will create a new file called newfile.norg 
      NOTE : this can only link to norg files, for example {:help.md:} -> creates a help.md.norg file
##### check boxes
      to implement a check box in a norg file you need to prefix your line with a bullet  ( so a header * or a list -) and then round brackets ( )
      this checkbox has a finished, not finished and a pending status but also has several different statuses ( check out neorg docs for more info )
      you can also nest these by adding multiple prefixes,,
      EXAMPLE:
      - ( )   < this is the parent checkbox
      -- ( )  < these are children
      -- ( )  < checking of one of the children makes the parents status "pending", 
	        checking off all of the children will make the parents status "finished" 
	        and checking of the parent will make all the childrens status "finished"
       same works for headers, just replace it with asteriks
       to quickly check these of ( or to make a header/list component a checkbox ) you can press ctrl+space
### bookmarks
      bookmarking is a quick way to acces a file you visit frequently ( like a dashboard or a journal/diary ) 
      to make the file you are currently on a bookmark you use a the keybind <SPACE>bm in normal mode
      to view all of your bookmarks you can create a window with the keybind <SPACE><RETURN> in normal mode
      to remove the file you are currently on from the list you use the keybind <SPACE>bd in normal mode 
### buffer manager
      NOTIM has a plugin to manage buffers, to view all the open buffers you can press <SPACE>bb 
      in this window you can select what buffer you want to open 
      for more info view the buffer_manager.nvim documentation
### file managing
      NOTIM uses oil.nvim to manage files, the file explorer is keybound to <SPACE>fe 
#### oil 
      in short, oil allows you to select file in normal mode but when entering instert mode you can rename files, 
      editing the text in the file explorer buffer allows you to delete, create and rename your files,
      when saving the buffer it will ask you for confirmation and list all of the changes it will be making after this save
      for more info view the oil.nvim documentation
### used plugins
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
