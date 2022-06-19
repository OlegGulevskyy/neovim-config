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
	highlight typescriptTSVariable guifg=#9ec9fe
	highlight TSFunction guifg=#b392f0
	highlight TSString guifg=#9ec9fe
	highlight TSParameter guifg=#ffac70
	highlight BufferLineIndicatorSelected guifg=#FF5733
]]
