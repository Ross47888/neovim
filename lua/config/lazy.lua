-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- Colourscheme
    { 
        "nyoom-engineering/oxocarbon.nvim",
        priority = 1000, -- High priority at startupt
        init = function()
            vim.cmd.colorscheme 'oxocarbon'
        end,
    },

    -- Fuzzy Finder
    {
        "nvim-telescope/telescope.nvim",
        event = "VimEnter",
        branch = "0.1.x",

        dependencies = {
            "nvim-lua/plenary.nvim",
            { -- If encountering errors, see telescope-fzf-native README for installation instructions
                'nvim-telescope/telescope-fzf-native.nvim',
                -- `build` is used to run some command when the plugin is installed/updated.
                -- This is only run then, not every time Neovim starts up.
                build = 'make',
                -- `cond` is a condition used to determine whether this plugin should be
                -- installed and loaded.
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
            {  
                'nvim-telescope/telescope-ui-select.nvim' },
            -- Useful for getting pretty icons, but requires a Nerd Font.
            {  
                'nvim-tree/nvim-web-devicons',
                enabled = vim.g.have_nerd_font
            },
        },

        config = function()
        
            local builtin = require "telescope.builtin"
            vim.keymap.set('n', "<leader>sh", builtin.help_tags, {desc = "[S]earch [h]elp"})
            vim.keymap.set('n', "<leader>vf", builtin.find_files, {desc = "Search local project files"})
            vim.keymap.set('n', "<leader>vg", builtin.live_grep, {desc = "Search local project files"})
            vim.keymap.set('n', "<leader>vw", builtin.grep_string, {desc = "Grep current word"})
            vim.keymap.set('n', "<leader>vd", builtin.diagnostics, {desc = "Search local diagnostics"})
            vim.keymap.set('n', "<leader>vr", builtin.resume, {desc = "Search resume"})
            -- vim.keymap.set('n', "<leader>gf", builtin.grep_string, {desc = "Search global files"})
            -- vim.keymap.set('n', "<leader>gs", builtin.grep_string, {desc = "Search global files"})
        end,

    },

    -- LSP
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- Mason for installing LSPs
            {
                "williambowman/mason.nvim",
                config = true,
            },
            {
                'williamboman/mason-lspconfig.nvim',
            },
            -- Not sure what this does?
            -- {
            --     'WhoIsSethDaniel/mason-tool-installer.nvim',
            -- },
        },
    },
  },

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- automatically check for plugin updates
  checker = { enabled = true },
})
