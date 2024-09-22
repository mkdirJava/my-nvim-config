vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
     -- Below is needed for nvim-java
     use {
             "williamboman/mason.nvim",
             'nvim-java/nvim-java',
             'nvim-java/lua-async-await',
             'nvim-java/nvim-java-refactor',
             'nvim-java/nvim-java-core',
             'nvim-java/nvim-java-test',
             'nvim-java/nvim-java-dap',
             'MunifTanjim/nui.nvim',
             'neovim/nvim-lspconfig',
             'mfussenegger/nvim-dap',
             'JavaHello/spring-boot.nvim',
             "nvim-neotest/nvim-nio",
             "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
     }





end)
