local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "phpcbf",
        "phpcs",
        "intelephense",
        "shellcheck"
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "php", "json", "yaml", "markdown" },
    },
  },
  {
    
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "custom.configs.nvimtree"
    end,
  }
}

return plugins
