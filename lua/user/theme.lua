local status_ok, githubTheme = pcall(require, "github-theme")
if not status_ok then
  return
end

githubTheme.setup({
  theme_style = "dimmed",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},
  colors = {hint = "orange", error = "#ff0000"},
	comment_style = "NONE",
  keyword_style = "NONE",
  function_style = "NONE",
  variable_style = "NONE"
})

-- Modifications of githubTheme
vim.cmd[[
	highlight tsxTSTagAttribute guifg=#b392f0
]]

vim.cmd[[
	highlight TSFunction guifg=#b392f0
]]

vim.cmd[[
	highlight TSString guifg=#9ec9fe
]]

vim.cmd[[
	highlight TSParameter guifg=#ffac70
]]

vim.cmd[[
	highlight typescriptTSVariable guifg=#9ec9fe
]]

-- Separator line between buffer lines, was hard to find
vim.cmd[[
	highlight BufferLineIndicatorSelected guifg=#FF5733
]]
