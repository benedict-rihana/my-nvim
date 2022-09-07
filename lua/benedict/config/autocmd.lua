vim.cmd [[
  
  augroup _fold_bug_solution  " https://github.com/nvim-telescope/telescope.nvim/issues/559
    autocmd!
    autocmd BufRead * autocmd BufWinEnter * ++once normal! zx
  augroup end

  augroup _auto_command
    autocmd!
    autocmd BufWritePre * :lua vim.lsp.buf.formatting_sync(nil, 2000)
  augroup end
]]