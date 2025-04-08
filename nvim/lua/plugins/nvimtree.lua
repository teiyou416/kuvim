return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				view = {
					adaptive_size = true,
					width = 30,
				},
				filters = {
					dotfiles = false,
				},
				renderer = {
					highlight_git = true,
					highlight_opened_files = "all",
					root_folder_modifier = ":t",
				},
			})
		end,
	},
}
