local wk = require("which-key")

wk.register({
  b = {
    name = "buffer/bookmark",
    b = {'<cmd>lua require("buffer_manager.ui").toggle_quick_menu()<CR>', "view buffers"},
    d = {'<cmd>lua require("bookmarks.list").delete_on_virt()<CR>', "remove current bookmark"},
    m = { '<cmd>lua require("bookmarks").add_bookmarks()<CR>', "add current file to bookmarks" }
  },
  n = {
    name = "neorg",
    n = {'<cmd>Neorg workspace notes<CR>', "notes (default) workspace"},
  },
  f = {
    name = "file", -- optional group name
    f = {'<cmd>Telescope find_files<cr>', "Find File" }, -- create a binding with label
    p = {':e ~/.config/nvim/lua/custom/<CR>', "view custom config folder" } ,
    -- it uses :e instead of <cmd> since that conflicts with readonly buffer
    e = {'<cmd>Oil<cr>', "file explorer"},
  },
}, { prefix = "<leader>" })
