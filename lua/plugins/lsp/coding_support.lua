return {
	-- coding support
	"machakann/vim-sandwich",
	{
		"sustech-data/wildfire.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("wildfire").setup()
		end,
	},
	{
		"Wansmer/treesj",
		keys = { "<space>m", "<space>j", "<space>s" },
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("treesj").setup({})
		end,
	},
	"monaqa/dial.nvim",
	"pechorin/any-jump.vim",
	"numToStr/Comment.nvim",
	"windwp/nvim-autopairs",
	"pocco81/auto-save.nvim",
	{
		"michaelb/sniprun",
		build = "sh install.sh",
	},
}
