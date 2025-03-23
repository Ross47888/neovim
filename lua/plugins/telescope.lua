local M =  {
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    branch = "0.1.x",
    cmd = "Telescope",

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
        vim.keymap.set('n', "<leader>pf", builtin.find_files, {desc = "Search local project files"})
        vim.keymap.set('n', "<leader>pg", builtin.live_grep, {desc = "Search local project files"})
        vim.keymap.set('n', "<leader>pw", builtin.grep_string, {desc = "Grep current word"})
        vim.keymap.set('n', "<leader>vd", builtin.diagnostics, {desc = "Search local diagnostics"})
        vim.keymap.set('n', "<leader>vr", builtin.resume, {desc = "Search resume"})
        -- vim.keymap.set('n', "<C-q>", builtin.close, {desc = "close telescope"})
        vim.keymap.set('n', "<leader>gf", builtin.git_files, {desc = "Search git files"})
        vim.keymap.set('n', "<leader>gs", builtin.grep_string, {desc = "Search git files"})
    end,

}

-- function M.config()
--     local builtin = require "telescope.builtin"
--     require("telescope").setup {
--         defaults {
--             mappings {
--                 i = {
--                     ["<C-q>"] = builtin.close,
--                 },
--                 n = {
--                     ["<esc>"] = builtin.close,
--                 },
--             },
--         }
--     }
-- end

return M
