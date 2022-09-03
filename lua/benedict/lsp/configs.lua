local status_ok, lsp_installer = pcall(require, "mason-lspconfig")
if not status_ok then
  vim.notify("mason.nvim missing")
	return
end

local lspconfig = require("lspconfig")

-- local servers = { "jsonls", "sumneko_lua" }

local servers = {"pyright","sumneko_lua","marksman"}

lsp_installer.setup({
	ensure_installed = servers,
})

-- for _, server in pairs(servers) do
--	local opts = {
--		on_attach = require("benedict.lsp.handlers").on_attach,
--		capabilities = require("benedict.lsp.handlers").capabilities,
--	}
--	local has_custom_opts, server_custom_opts = pcall(require, "benedict.lsp.settings." .. server)
--	if has_custom_opts then
--		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
--	end
--	local server_ok, config = pcall(require,"lspconfig."..server)
--  if not server_ok then
--    -- config.setup(opts)
--    vim.notify("lspconfig."..server.." is missing")
--    return
--  end
--  config.setup(opts)

  -- lspconfig[server].setup(opts)
-- end
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
