local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("lspconfig is missing")
  return
end


-- require("benedict.lsp.lsp-installer")
-- require("benedict.lsp.configs")
--local handlers = require("benedict.lsp.handlers")
--handlers.setup()
require("mason").setup()
require("mason-lspconfig").setup()
require("benedict.lsp.null-ls")
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("lspconfig is missing")
  return
end
require("benedict.lsp.configs")
local handlers = require("benedict.lsp.handlers")
handlers.setup()
