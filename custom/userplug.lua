-- this is where you should put personal added plugins in the lazy.nvim package manager format, 
-- norg is here since it's optional and if you don't plan on using norg to take notes I would reccomend removing it from your user plugins
-- though I highly reccomend trying norg out instead of markdown files

USERPLUG = {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
