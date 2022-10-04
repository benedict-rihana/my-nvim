local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup({
  size = 20,
  -- TODO: add my own keymapping to <space-t>
  open_mapping = [[<c-\>]],
  hide_numbers = false,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 3,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = "float",
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "curved",
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})
local Terminal     = require('toggleterm.terminal').Terminal
local gradle_build = Terminal:new({
  cmd = "gradle build",
  direction = "horizontal",
  close_on_exit = false
})
local gradle_test  = Terminal:new({
  cmd = "gradle test",
  direction = "horizontal",
  close_on_exit = false
})

function _gradle_build_toggle()
  gradle_build:toggle()
end

function _gradle_test_toggle()
  gradle_test:toggle()
end

vim.api.nvim_set_keymap("n", "gb", "<cmd>lua _gradle_build_toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gt", "<cmd>lua _gradle_test_toggle()<CR>", { noremap = true, silent = true })
