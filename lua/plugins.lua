-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
 -- Common utilities
 use("nvim-lua/plenary.nvim")

 -- Icons
 use("nvim-tree/nvim-web-devicons")

 -- Colorschema
 use("rebelot/kanagawa.nvim")

 -- Statusline
 use({
	 "nvim-lualine/lualine.nvim",
	 event = "BufEnter",
	 config = function()
		 require("configs.lualine")
	 end,
	 requires = { "nvim-web-devicons" },
 })

 -- Show colors
 use({
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup({ "*" })
	end,
})

-- Terminal
use({
	"akinsho/toggleterm.nvim",
	tag = "*",
	config = function()
		require("configs.toggleterm")
	end,
})

-- Git
use({
	"lewis6991/gitsigns.nvim",
	config = function()
		require("configs.gitsigns")
	end,
})

-- Markdown Preview
use({
	"iamcco/markdown-preview.nvim",
	run = function()
		vim.fn["mkdp#util#install"]()
	end,
})

-- autopairs
use({
	"windwp/nvim-autopairs",
	config = function()
		require("configs.autopairs")
	end,
})

-- Background Transparent
use({
	"xiyaowong/nvim-transparent",
	config = function()
		require("configs.transparent")
end, 
})

-- Null-ls 
use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
        require("configs.null-ls")
    end,
})

-- Telescope
	use ({
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require("configs.telescope")
    end,
  })

  -- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		config = function()
			require("configs.treesitter")
		end,
	})

	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })
  
  -- File manager
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})
 
  -- LSP
  use ({
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},
	},
	config = function()
		require("configs.lsp")
	end,

})

use("folke/zen-mode.nvim")
use("github/copilot.vim")
use("eandrju/cellular-automaton.nvim")
use("laytan/cloak.nvim")
  

end)
