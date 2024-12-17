-- Defaults taken from Git page
local builtin = require('telescope.builtin')
-- vim.keymap.set('n', "<leader>sh", builtin.help_tags, {desc = "[S]earch [h]elp"})
vim.keymap.set('n', "<leader>pf", builtin.find_files, {desc = "Search local project files"})
vim.keymap.set('n', "<leader>pg", builtin.live_grep, {desc = "Search local project files"})
vim.keymap.set('n', "<leader>vw", builtin.grep_string, {desc = "Grep current word"})

-- Git
vim.keymap.set('n', "<leader>gf", builtin.git_files, {desc = "Search git files"})
vim.keymap.set('n', "<leader>gs", builtin.grep_string, {desc = "Search git files"})

-- Telescope Utility
-- vim.keymap.set('n', "<C-q>", builtin.close, {desc = "close telescope"})
vim.keymap.set('n', "<leader>vr", builtin.resume, {desc = "Search resume"})
vim.keymap.set('n', "<leader>vd", builtin.diagnostics, {desc = "Search local diagnostics"})

-- Help Tags
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Don't really use
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
