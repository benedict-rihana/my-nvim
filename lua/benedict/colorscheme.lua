-- declare the cust scheme we are going to use
-- local custcolorscheme = "tokyonight"

local custcolorscheme = "darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. custcolorscheme)

if not status_ok then
  vim.notify("Warn: Color Scheme [" .. custcolorscheme .. "] Not Found")
  return
end
