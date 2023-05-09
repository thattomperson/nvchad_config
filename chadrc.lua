---@type ChadrcConfig
local M = {}
M.ui = {
  theme = 'rosepine',
  statusline = {
    theme = "vscode_colored"
  },
  tabufline = {
    overriden_modules = function()
      return {
        -- Remove the light mode button
        buttons = function()
          local CloseAllBufsBtn = "%@TbCloseAllBufs@%#TbLineCloseAllBufsBtn#" .. "  " .. "%X"
          return CloseAllBufsBtn
        end,
      }
    end,
  },
  nvdash = {
    load_on_startup = true,
    header = {
      " ███████████    ███████████     ██       ██     ███████████",
      " ██             ██       ██     ██       ██     ██       ██",
      " ██             ██       ██     ██       ██     ██       ██",
      "███████████     ██       ██     ██       ██     ███████████",
      " ██             ██       ██     ██       ██     ██     ██  ",
      " ██             ███████████     ███████████     ██       ██",
    },
  }
}

M.plugins = "custom.plugins"
M.mappings = require (vim.g.neovide and "custom.neovide_mappings" or "custom.mappings")


return M
