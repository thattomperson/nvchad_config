local M = require "custom.mappings"

M.neovide = {
  n = {
    ["<D-b>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
    ["<D-s>"] = { ":w<cr>", "Save the current buffer" },
    ["<D-v>"] = { '"+P', "Paste from the system clipboard" },
  },
  i = {
    ["<D-v>"] = { '<ESC>l"+Pli', "Paste from the system clipboard" },
  },
  v = {
    ["<D-c>"] = { '"+y', "Yank to the system clipboard" },
    ["<D-v>"] = { '"+P', "Paste from the system clipboard" },
  },
  c = {
    ["<D-v>"] = { "<C-R>+", "Paste from the system clipboard" }
  },
}



M.treesitter = {
  n = {
    ["<D-p>"] = {
      function()
        require('telescope.builtin').find_files()
      end,
      "Find files"
    },
  }
}

return M;
