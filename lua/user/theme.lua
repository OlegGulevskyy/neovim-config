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
