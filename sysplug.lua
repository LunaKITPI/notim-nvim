SYSPLUG = {
  "stevearc/oil.nvim",
  "rebelot/kanagawa.nvim",

  { "folke/which-key.nvim", event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {}
  },

  { 'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
  end,},

  "ixru/nvim-markdown",
  "nvim-lualine/lualine.nvim",
  "nvim-tree/nvim-web-devicons",
  "j-morano/buffer_manager.nvim",
  "nvim-lua/plenary.nvim",
  {'windwp/nvim-autopairs', event = "InsertEnter", opts = {} },
  "nvim-telescope/telescope.nvim",


  {
    'crusj/bookmarks.nvim',
    keys = {
        { "<tab><tab>", mode = { "n" } },
    },
    branch = 'main',
    dependencies = { 'nvim-web-devicons' },
    config = function()
        require("telescope").load_extension("bookmarks")
    end
  },
  -- the next few are all telescopre dependancies
  {
    "BurntSushi/ripgrep",
    "sharkdp/fd",
    "neovim LSP",
    "nvim-tree/nvim-web-devicons",
  },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
 {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
 },
}
