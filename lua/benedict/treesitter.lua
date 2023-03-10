local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end


configs.setup({
  ensure_installed = { "c", "lua", "cpp", "bash", "html", "kotlin", "java", "make", "markdown", "python", "sql", "swift",
    "typescript", "json", "gitignore" }, -- one of "all" or a list of languages
  ignore_install = { "" }, -- List of parsers to ignore installing
  auto_install = true,
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "css" }, -- list of language that will be disabled
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = false, disable = { "css" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
})
