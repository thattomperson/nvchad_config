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
  },
  { 
    "stevearc/dressing.nvim",
    init = function() require("custom.utils").load_plugin_with_func("dressing.nvim", vim.ui, { "input", "select" }) end,
    opts = function() 
      return require "custom.configs.dressing"
    end
  },

  -- Ideally a task runner would be cool, simmilar to Cmd-S-a in phpstorm or Cmd-S-p in vscode
  -- We would want to be able to run both vim, lua and also cli jobs here
  -- {
  --   "jedrzejboczar/toggletasks.nvim",
  --   cmd = { "Telescope toggletasks" },
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'akinsho/toggleterm.nvim',
  --     'nvim-telescope/telescope.nvim',
  --   },
  --   init = function()
  --     require('telescope').load_extension('toggletasks')
  --   end
  -- },
}

return plugins
