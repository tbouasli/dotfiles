return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
      local api = require("nvim-tree.api")
      local wk = require("which-key")

      wk.add({
          { "<leader>f", group = "file" },
          { "<leader>fe", api.tree.toggle, desc = "File Explorer", mode = "n" },
      })
    end,
}