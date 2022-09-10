local ok_lib, litee_lib = pcall(require, 'litee.lib')
local ok_calltree, litee_calltree = pcall(require, 'litee.lib')
local ok_filetree, litee_filetree = pcall(require, 'litee.lib')
local ok_symboltree, litee_symboltree = pcall(require, 'litee.lib')
local ok_bookmark, litee_bookmark = pcall(require, 'litee.lib')

if not ok_lib then
  vim.notify("litee core lib is missing")
  return
end

-- Litee Calltree configuration
-- configure the litee.nvim library
litee_calltree.setup({})

if not ok_calltree then
  vim.notify("litee calltree is missing")
  return
end

-- configure litee-calltree.nvim
litee_calltree.setup({})

--------------------------------------------------------------------------

-- filetree configuration
if not ok_filetree then
  vim.notify("litee filetree is missing")
  return
end

litee_filetree.setup({})

--------------------------------------------------------------------------

-- syombol tree configuration
if not ok_symboltree then
  vim.notify("litee syombole tree is missing")
  return
end

litee_symboltree.setup({})

--------------------------------------------------------------------------

-- bookmark configuration
if not ok_bookmark then
  vim.notify("litee bookmark is missing")
  return
end

litee_bookmark.setup({})
