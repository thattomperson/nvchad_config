
local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local actions = null_ls.builtins.code_actions


local sources = {
  formatting.phpcbf.with({
    extra_args = {
      "--standard=./.git/phpcs.xml",
    }
  }),
  lint.phpcs.with({
    extra_args = {
      "--standard=./.git/phpcs.xml",
    }
  }),
  lint.shellcheck,
  actions.gitsigns,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end,
    })
  end
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}
