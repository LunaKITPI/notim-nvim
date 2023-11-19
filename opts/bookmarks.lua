require("bookmarks").setup({
    storage_dir = "",  -- Default path: vim.fn.stdpath("data").."/bookmarks,  if not the default directory, should be absolute path",
    mappings_enabled = true, -- If the value is false, only valid for global keymaps: toggle、add、delete_on_virt、show_desc
    keymap = {
        toggle = "0)_)", -- Toggle bookmarks(global keymap) I set it to an impossible keymap instead of to nothing since it defaults to <tab><tab> 
    -- reason for disabling -> it encounters errors when previewing a markdown file
        add = "<space>bm", -- Add bookmarks(global keymap)
        jump = "<return>", -- Jump from bookmarks(buf keymap)
        delete = "dd", -- Delete bookmarks(buf keymap)
        order = "<space><space>", -- Order bookmarks by frequency or updated_time(buf keymap)
        delete_on_virt = "<space>bd", -- Delete bookmark at virt text line(global keymap)
    },
    width = 0.8, -- Bookmarks window width:  (0, 1]
    height = 0.7, -- Bookmarks window height: (0, 1]
    preview_ratio = 0.45, -- Bookmarks preview window ratio (0, 1]
    tags_ratio = 0.1, -- Bookmarks tags window ratio
    fix_enable = false, -- If true, when saving the current file, if the bookmark line number of the current file changes, try to fix it.

    virt_text = "", -- Show virt text at the end of bookmarked lines, if it is empty, use the description of bookmarks instead.
    sign_icon = "󰃃",                                           -- if it is not empty, show icon in signColumn.
    border_style = "single", -- border style: "single", "double", "rounded" 
    hl = {
        border = "TelescopeBorder", -- border highlight
        cursorline = "guibg=Gray guifg=White", -- cursorline highlight
    }
})
