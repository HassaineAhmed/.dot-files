--, ... this file is filled with pain
return {
	"devsjc/vim-jb",
	"sar/extra-darkplus.nvim",
	"gantoreno/nvim-gabriel",
	"nyoom-engineering/oxocarbon.nvim",
	{ "EdenEast/nightfox.nvim" },
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				compile = false, -- enable compiling the colorscheme
				undercurl = true, -- enable undercurls
				commentStyle = { italic = true },
				functionStyle = {},
				keywordStyle = { bold = true },
				statementStyle = { bold = true },
				typeStyle = { bold = true },
				transparent = false, -- do not set background color
				dimInactive = false, -- dim inactive window `:h hl-NormalNC`
				terminalColors = true, -- define vim.g.terminal_color_{0,17}
				colors = { -- add/modify theme and palette colors
					palette = {},
					theme = { wave = {}, lotus = {}, dragon = {}, all = { ui = { bg_gutter = "none" } } },
				},
				overrides = function(colors) -- add/modify highlights
					local theme = colors.theme
					return {
						TelescopeTitle = { fg = theme.ui.special, bold = true },
						TelescopePromptNormal = { bg = theme.ui.bg_p1 },
						TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
						TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
						TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
						TelescopePreviewNormal = { bg = theme.ui.bg_dim },
						TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
						Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
						PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
						PmenuSbar = { bg = theme.ui.bg_m1 },
						PmenuThumb = { bg = theme.ui.bg_p2 },
					}
				end,
				background = { -- map the value of 'background' option to a theme
					dark = "wave", -- try "dragon" !
					light = "lotus",
				},
			})
		end,
	},
	{
		"olivercederborg/poimandres.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("poimandres").setup({
				-- leave this setup function empty for default config
				-- or refer to the configuration section
				-- for configuration options
			})
		end,

		-- optionally set the colorscheme within lazy config
		init = function()
			vim.cmd("colorscheme poimandres")
		end,
	},
	"Mofiqul/vscode.nvim",
	{
		"gmr458/vscode_modern_theme.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vscode_modern").setup({
				cursorline = true,
				transparent_background = false,
				nvim_tree_darker = true,
			})
			vim.cmd.colorscheme("vscode_modern")
		end,
	},

	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			-- your optional config goes here, see below.
		end,
	},
	"norcalli/nvim-colorizer.lua",
	"realbucksavage/riderdark.vim",
	{
		lazy = false,
		priority = 1000,
		dir = "~/plugins/colorbuddy.nvim",
		config = function()
			vim.cmd.colorscheme("rose-pine")
		end,
	},
	"devsjc/vim-jb",
	"rktjmp/lush.nvim",
	"tckmn/hotdog.vim",
	"dundargoc/fakedonalds.nvim",
	"craftzdog/solarized-osaka.nvim",
	{ "rose-pine/neovim", name = "rose-pine" },
	"eldritch-theme/eldritch.nvim",
	"jesseleite/nvim-noirbuddy",
	"vim-scripts/MountainDew.vim",
	"miikanissi/modus-themes.nvim",
	"rebelot/kanagawa.nvim",
	"gremble0/yellowbeans.nvim",
	"rockyzhang24/arctic.nvim",
	"folke/tokyonight.nvim",
	"Shatur/neovim-ayu",
	"RRethy/base16-nvim",
	"xero/miasma.nvim",
	"cocopon/iceberg.vim",
	"kepano/flexoki-neovim",
	"ntk148v/komau.vim",
	{ "catppuccin/nvim", name = "catppuccin" },
	"uloco/bluloco.nvim",
	"LuRsT/austere.vim",
	"ricardoraposo/gruvbox-minor.nvim",
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.gruvbox_material_enable_italic = true
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
	"NTBBloodbath/sweetie.nvim",
	"rktjmp/lush.nvim",
	"briones-gabriel/darcula-solid.nvim",
	{
		"maxmx03/fluoromachine.nvim",
		-- config = function()
		--   local fm = require "fluoromachine"
		--   fm.setup { glow = true, theme = "fluoromachine" }
		-- end,
	},
}
