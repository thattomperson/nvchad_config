local M = {}

M.all = {
  n = {
    ["<leader>gA"] = {
      function()
        require("gitsigns").stage_buffer()
      end,
      "Stage buffer",
    },
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "Show available code actions",
    }
  },
  i = {
  },
  v = {
  },
  c = {
  },
}

--M.buffer_switcher = { n = {} }

--for i = 1, 9, 1 do
--  local key = string.format("<A-%s>", i)
--
--  M.buffer_switcher.n = {
--    [key] = {
--      function ()
--        vim.api.nvim_set_current_buf(vim.t.bufs[i])
--      end,
--      string.format("Switch to the %s buffer", i)
--    },
--    M.buffer_switcher.n
--  }
--end

return M;
