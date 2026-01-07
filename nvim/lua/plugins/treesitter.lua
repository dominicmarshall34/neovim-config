return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      -- Setup nvim-treesitter
      require("nvim-treesitter").setup({
        install_dir = vim.fn.stdpath("data") .. "/site",
      })

      -- Install parsers
      require("nvim-treesitter").install({
        "lua",
        "vim",
        "vimdoc",
        "php",
        "html",
        "css",
        "javascript",
        "python",
        "bash",
        "json",
      })

      -- Enable highlighting for all filetypes
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "lua", "vim", "php", "html", "css", "javascript", "python", "bash", "json" },
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  }
}
