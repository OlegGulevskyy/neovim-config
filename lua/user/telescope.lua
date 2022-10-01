local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"

local pickers = {
	current_buffer_fuzzy_find = {
		sorting_strategy = 'ascending'
	}
}

local fuzzy_search = false

local default_setup = {
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },
		layout_strategy = "vertical",

    mappings = {
      i = {
        ["<Down>"] = actions.cycle_history_next,
        ["<Up>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },

	pickers = pickers,

	extensions = {
		fzf = {
			fuzzy = fuzzy_search,                    -- false will only do exact matching
			override_generic_sorter = true,  -- override the generic sorter
			override_file_sorter = true,     -- override the file sorter
			case_mode = "respect_case",        -- or "ignore_case" or "respect_case"
																			 -- the default case_mode is "smart_case"
		}
	}
}

telescope.setup(default_setup)
telescope.load_extension('fzf')
