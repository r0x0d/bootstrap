return require("packer").startup(function()
    use("wbthomason/packer.nvim")

    -- TJ created lodash of neovim
    use("nvim-telescope/telescope.nvim")

    -- All the things
    use("neovim/nvim-lspconfig")

    use("mbbill/undotree")

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")
    use("sakhnik/nvim-gdb")
    use("Pocco81/dap-buddy.nvim")
    use("dense-analysis/ale")
    use({
        "tpope/vim-fugitive",
        requires = {"tpope/vim-rhubarb", "shumphrey/fugitive-gitlab.vim", "FrostyX/vim-fugitive-pagure"}
    })
    use("psf/black")
    use({'preservim/nerdcommenter'})
    use({'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'})
    use({'jbyuki/venn.nvim'})
    use({'neoclide/coc.nvim', branch = 'release'})
    use({'nvim-neorg/neorg', run = ':Neorg sync-parsers'})
end)
