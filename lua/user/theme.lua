local status_ok, githubTheme = pcall(require, "github-theme")
if not status_ok then
  return
end

githubTheme.setup({
  theme_style = "dark",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},
  colors = {hint = "orange", error = "#ff0000"},
})
