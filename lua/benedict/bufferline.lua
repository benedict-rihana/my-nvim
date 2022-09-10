local ok, buffer_line = pcall(require, "bufferline")

if not ok then
  vim.notify("bufferline is missing")
  return
end


vim.opt.termguicolors = true
buffer_line.setup {

}
