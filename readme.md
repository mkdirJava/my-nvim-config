# My Neovim config


This config is tested against

* Neovim version v0.11.0-dev

It can be installed on Ubuntu via 

    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim

This configuration uses Packer to download dependencies

these dependencies are then found here
~/.local/share/nvim/site/pack/packer/start/

Run this command to set where the config should get jar dependencies
	
	export JDTLS_DEP=$(pwd)/jdtls_dependencies

To install Packer 
    
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

Then you can go into nvim and run this to download dependencies

    :PackerSync

Once you have done so. You can restart nvim and you should be good
