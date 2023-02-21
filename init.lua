
----------------------------------
-- file:  ~/.config/nvim/init.lua
-- основан на
-- https://github.com/Tony-Sol/.config/blob/master/nvim/lua/configs.lua 
----------------------------------

local cmd    = vim.cmd -- execute Vim commands
local g      = vim.g -- global variables
local opt    = vim.opt -- global/buffer/windows-scoped
local keymap = vim.keymap -- keymaps
local api    = vim.api -- API
local fn     = vim.fn -- functions

opt.listchars:append('space:⋅')
-- для lsp-zero
opt.signcolumn = 'yes'
opt.updatetime = 100
opt.list = false
opt.cursorline = false
-- нумерация строк
opt.number = true
opt.relativenumber = true
-- используем 2 пробела вместо табуляции
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smarttab = true
opt.smartcase = true
opt.smartindent = true
-- поиск
opt.hlsearch = false
opt.incsearch = true
opt.splitright = true
-- почти выключаем работу с мышью
opt.mouse = 'c'
-- курсор в виде блока при вставке
opt.guicursor = ""
-- отключаем временное сохранение
opt.swapfile = false
opt.backup = false
-- folding
-- маржин от левого края для fold'инга: 9 это max
opt.foldcolumn = '9'
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
--  полоса определяющая длину строки 80 символов
opt.cc = '80'

-- конфиг netrw
-- https://dev.to/elvessousa/my-basic-neovim-setup-253l
g.netrw_banner = 0
g.netrw_keepdir = 0
g.netrw_winsize = 30
g.netrw_liststyle = 0
g.netrw_browse_split = 4
g.netrw_altv = 1

-- клавиши для telescope
local opts = { noremap = true, silent = true }
keymap.set('n', '<c-p>', require('telescope.builtin').find_files, opts)
keymap.set('n', '<Space>fg', require('telescope.builtin').live_grep, opts)
keymap.set('n', '<Space><Space>', require('telescope.builtin').oldfiles, opts)
-- поиск через ripgrep с аргументами?
keymap.set('n', '<Space>fs',
	require("telescope").extensions.live_grep_args.live_grep_args, opts)

-- подсветка выделенного блока
cmd[[au TextYankPost * silent! lua vim.highlight.on_yank()]]
-- включаем менеджмент плагинами
cmd('packadd packer.nvim')

require('packer').startup(function(use)
  -- используем packer, чтобы обновлять packer
  use { 'wbthomason/packer.nvim', opt = true }
  -- плагины добавлять сюда:

  -- для темы  zenbones
  use 'rktjmp/lush.nvim'
	-- тема для neovim zenvones/neobones
  use {
	  "mcchrish/zenbones.nvim",
	  requires = "rktjmp/lush.nvim",
	  config = function ()
		  vim.cmd 'set termguicolors'
		  vim.cmd 'set background=dark'  -- or light 
		  vim.cmd 'colorscheme neobones' end
  }

  -- Даже если включена русская раскладка команды vim будут работать
  use 'powerman/vim-plugin-ruscmd'

  use 'nvim-lua/plenary.nvim'

	use {
		'nvim-treesitter/nvim-treesitter',
		requires = {'nvim-treesitter/nvim-treesitter-refactor' },
		run = ':TSUpdate',
		require('nvim-treesitter.configs').setup {
			ensure_installed = { "scala", "python", "lua", "vim", "help" },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = false,
				additional_vim_regex_highlighting = false,
			},
			refactor         = {
				highlight_definitions   = { enable = false },
				highlight_current_scope = { enable = false },
				smart_rename            = { enable = true },
			},
		}
	}

  -- Комментирует по gc все, вне зависимости от языка
  use {
	  'numToStr/Comment.nvim',
	  config = function() require('Comment').setup() end
  }

	--  для LSP
	use {
		'williamboman/mason.nvim',
		require('mason').setup {},
	}
	use {
		'williamboman/mason-lspconfig.nvim',
		require('mason-lspconfig').setup {
			automatic_installation = true,
			ensure_installed       = {
				'lua_ls',
				'marksman',
				'pylsp',
			},
		},
	}

	-- Configurations for Nvim LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

	-- telescope
	use {
		'nvim-telescope/telescope-file-browser.nvim',
		'nvim-telescope/telescope-live-grep-args.nvim',
	}

	local telescope = require("telescope")
	local lga_actions = require("telescope-live-grep-args.actions")
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope-file-browser.nvim',
			'nvim-telescope/telescope-live-grep-args.nvim',
		},
		require('telescope').setup {
			defaults = {
				layout_strategy = 'vertical' ,
				--				mappings = {
				--					n = { ['<Space><Space>'] = require('telescope.builtin').find_files },
				--				},
			},
			extensions = {
				file_browser = { hijack_netrw = false, },
				live_grep_args = {
					auto_quoting = true,
					mappings = {
						i = {
							["<c-k>"] = lga_actions.quote_prompt(),
							["<c-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
						},
					},
				},
			},

			require('telescope').load_extension('file_browser'),
			require('telescope').load_extension('live_grep_args'),
		}
	}

	-- автоскобки
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

end)
