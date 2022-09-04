local status_ok, lsp_installer = pcall(require, "mason-lspconfig")
if not status_ok then
  vim.notify("mason.nvim missing")
	return
end

local lspconfig = require("lspconfig")

-- local servers = { "jsonls", "sumneko_lua" }

local servers = {"pyright","sumneko_lua","marksman", "clangd","kotlin_language_server","tsserver"}

lsp_installer.setup({
	ensure_installed = servers,
})

for _, server in pairs(servers) do
  local serv = lspconfig[server]
  if serv then
	  local opts = {
		  on_attach = require("benedict.lsp.handlers").on_attach,
		  capabilities = require("benedict.lsp.handlers").capabilities,
	  }
    serv.setup(opts)
  end
end
