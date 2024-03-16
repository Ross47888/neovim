-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install and customise plugins
require("lazy").setup("config.lazy_plugins")

-- next step to set up lazy
-- The worse way to install plugins (not sorted into files)
--require("lazy").setup({
--	"nvim-telescope/telescope.nvim",
--	{
--		"folke/trouble.nvim",
--		config = function()
--			require("trouble").setup {
--				icons = false, 		-- use devicons for filenames
--			}
--		end,
--	},
--	{
--		"nvim-treesitter/nvim-treesitter",
--		build = ":TSUpdate",			-- build ran as neovim cmd when prefaced as : otherwise ran as bash
--	},
--}
--,
--{}
--)
