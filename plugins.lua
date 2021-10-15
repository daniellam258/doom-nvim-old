-- plugins - Doom nvim custom plugins
--
-- This file contains all the custom plugins that are not in Doom nvim but that
-- the user requires. All the available fields can be found here
-- https://github.com/wbthomason/packer.nvim#specifying-plugins
--
-- By example, for including a plugin with a dependency on telescope:
-- return {
--     {
--         'user/repository',
--         requires = { 'nvim-lua/telescope.nvim' },
--     },
-- }

return {
    -- Projects Search
    {
        'nvim-telescope/telescope-project.nvim',
        after = {'telescope.nvim'},
        config = function()
            require'telescope'.load_extension('project')
        end,
    },
    -- Bookmarks
    {
        'MattesGroeger/vim-bookmarks'
    },
    {
        'tom-anders/telescope-vim-bookmarks.nvim',
        after = {'vim-bookmarks', 'telescope.nvim'},
        config = function()
            require'telescope'.load_extension('vim_bookmarks')
        end,
    },
    -- Movements
    {
        'chaoren/vim-wordmotion',
        'justinmk/vim-sneak',
    },
    -- Commenting
    {
        'tomtom/tcomment_vim',
    },
    -- Wrapping/Delimiters
    {
        'machakann/vim-sandwich',
        {
            'andymass/vim-matchup',
            after = {'nvim-treesitter'},
            -- config = function()
            --     require('nvim-treesitter.configs').setup {
            --         matchup = {
            --             enable = true,
            --         }
            --     }
            -- end,
        }
    },
    -- Solidity
    {
        'tomlion/vim-solidity',
        ft = {'solidity'}
    },
    -- Markdown
  {
    'iamcco/markdown-preview.nvim',
    ft = {'markdown'},
    run = function()
      vim.fn['mkdp#util#install()']()
    end,
  },
  {
	  'sudormrfbin/cheatsheet.nvim',
	  requires = {
   		 {'nvim-telescope/telescope.nvim'},
   		 {'nvim-lua/popup.nvim'},
   		 {'nvim-lua/plenary.nvim'},
	 },
	 config = function()
		require('cheatsheet').setup({
			bundled_cheatsheets = true,
			bundled_plugin_cheatsheets = true,
		})
	end
  }
}
