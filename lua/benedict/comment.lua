local comment_ok, comment = pcall(require, "Comment")

if not comment_ok then
  vim.notify("comment plugin is missing")
  return
end

comment.setup()
