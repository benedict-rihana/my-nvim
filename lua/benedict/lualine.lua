local ok, lualine = pcall(require, "lualine")

if not ok then
  vim.notify("lualine is missing")
  return
end

lualine.setup()
