vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
	}
	use {
		vim.cmd [[packadd packer.nvim]]
	}
	use({ 'rose-pine/neovim', as = 'rose-pine' })

	use{
		'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'}
	}
	use{
		 'nvim-treesitter/playground'
	 }
	 use{
		 'theprimeagen/harpoon'
	 }
	 use {
		 'mbbill/undotree'
	 }
	 use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	 use({'hrsh7th/nvim-cmp'})
	 use({'hrsh7th/cmp-nvim-lsp'})
	 use {
		 "williamboman/mason.nvim",
		 "williamboman/mason-lspconfig.nvim",
		 "neovim/nvim-lspconfig",
		 'folke/tokyonight.nvim',
		 "tpope/vim-fugitive",
		 "nvim-lua/plenary.nvim"
	 }
     use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
     use {"mfussenegger/nvim-dap"}
     use { "leoluz/nvim-dap-go" }
     use {'mfussenegger/nvim-jdtls'}
end)
