require('telescope').setup({
  defaults = {
	  path_display = {"smart"},
    layout_config = {
      vertical = { width = 0.5 }
      -- other layout configuration here
    },
    -- other defaults configuration here
  },

  extensions = {
	fzf = {
		fuzzy = true,
		override_generic_sorter = true,
		override_file_sorter = true,
		case_mode = "smart_case",
	},
	file_browser = {
	}

  }
  -- other configuration values here
})
require'telescope'.load_extension('fzf')
require'telescope'.load_extension('file_browser')




