return {
	-- color schemes
	"cocopon/iceberg.vim",
	"rebelot/kanagawa.nvim",
	{ "rose-pine/neovim", name = "rose-pine" },
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
				},
			})
			vim.cmd("colorscheme duskfox")
		end,
	},
}
