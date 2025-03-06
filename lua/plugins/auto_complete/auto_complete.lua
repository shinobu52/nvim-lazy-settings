return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-cmdline",
			"f3fora/cmp-spell",
			"onsails/lspkind.nvim",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			local cmp = require("cmp")
			local lspkind = require("lspkind")

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({
						select = true,
					}),
				}),
				sources = cmp.config.sources({
					{
						name = "nvim_lsp",
					},
					{
						name = "buffer",
					},
					{
						name = "path",
					},
					{
						name = "luasnip",
					},
				}),
				formatting = {
					format = lspkind.cmp_format({
						mode = "symbol",
						maxwidth = 50,
						ellipsis_char = "...",
						show_labelDetails = true,
						before = function(entry, vim_item)
							return vim_item
						end,
					}),
				},
			})

			-- `/` cmdline setup
			cmp.setup.cmdline("/", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = { {
					name = "buffer",
				} },
			})

			-- `:` cmdline setup
			cmp.setup.cmdline(":", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources(
					{ {
						name = "path",
					} },
					{ {
						name = "cmdline",
						option = {
							ignore_cmds = { "Man", "!" },
						},
					} }
				),
			})

			-- Spell source setup
			cmp.setup({
				sources = {
					{
						name = "spell",
						option = {
							keep_all_entries = false,
							enable_in_context = function()
								return true
							end,
							preselect_correct_word = true,
						},
					},
				},
			})
		end,
	},
	{
		"hrsh7th/cmp-nvim-lsp",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			require("lspconfig").clangd.setup({
				capabilities = capabilities,
			})
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"f3fora/cmp-spell",
	"onsails/lspkind.nvim",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	{
		"zbirenbaum/copilot-cmp",
		config = function()
			require("copilot_cmp").setup()
		end,
	},
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({})
		end,
	},
}
