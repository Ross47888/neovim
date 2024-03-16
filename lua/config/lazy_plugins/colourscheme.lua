return {
	"folke/tokyonight.nvim",
	"cocopon/iceberg.vim",
	"shaunsingh/nord.nvim",
	{
		"nyoom-engineering/oxocarbon.nvim",
		name = oxocarbon,
		lazy = false, -- forces load on start up
		priority = 1000, 	-- high priority
		config = function()
			vim.cmd("colorscheme oxocarbon")
		end,
	},
}
