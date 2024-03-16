-- This init file is used for plugins  that don't have any custom configs
-- And also aren't easily placed in another file like colourschemes
return{
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
		priority = 1000 			-- VIP(lugin)
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = 
		{
			"plenary"
		}
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup {
				icons = false,		-- I don't use those nerd fonts
			}
		end
	},
	{
		"vim-airline/vim-airline",
		lazy = false,
	}

}
