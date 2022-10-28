return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("sbdchd/neoformat")

    -- TJ created lodash of neovim
    use("nvim-telescope/telescope.nvim")

    -- All the things
    use("neovim/nvim-lspconfig")

    use("mbbill/undotree")

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")

    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")
    use("sakhnik/nvim-gdb")
    use("Pocco81/dap-buddy.nvim")
    use({
      "someone-stole-my-name/yaml-companion.nvim",
      requires = {
          { "neovim/nvim-lspconfig" },
          { "nvim-lua/plenary.nvim" },
          { "nvim-telescope/telescope.nvim" },
      },
      config = function()
        require("telescope").load_extension("yaml_schema")
      end,
    })
    use("dense-analysis/ale")
    use({
        "tpope/vim-fugitive", 
        requires = {"tpope/vim-rhubarb", "shumphrey/fugitive-gitlab.vim", "FrostyX/vim-fugitive-pagure"}
    })
    use("psf/black")
    use("rust-lang/rust.vim")
    use("preservim/vim-markdown")
    use({ 
        "iamcco/markdown-preview.nvim", 
        ft = "markdown", 
        run = "cd app && yarn install" 
    })
    use({'preservim/nerdcommenter'})
    use({'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}})
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-treesitter/nvim-treesitter"}
        }
    }
    use({'ms-jpq/coq_nvim', branch = 'coq'})
    use({'ms-jpq/coq.artifacts', branch = 'artifacts'})
    use({'ms-jpq/coq.thirdparty', branch = '3p'})
    use({'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim'})
    use({
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    })
    use({'subnut/nvim-ghost.nvim', run = ':call nvim_ghost#installer#install()'})
    use({'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }})
    use({
      'chipsenkbeil/distant.nvim',
      config = function()
        require('distant').setup {
          -- Applies Chip's personal settings to every machine you connect to
          --
          -- 1. Ensures that distant servers terminate with no connections
          -- 2. Provides navigation bindings for remote directories
          -- 3. Provides keybinding to jump into a remote file's parent directory
          ['*'] = require('distant.settings').chip_default()
        }
      end
    })
    use({
      'declancm/cinnamon.nvim',
      config = function() require('cinnamon').setup() end
    })
    use({'jbyuki/venn.nvim'})
end)
