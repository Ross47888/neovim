vim.g.mapleader = " "
vim.keymap.set("n", "<leader>vn", vim.cmd.Ex)

-- Primagen move lines, better than my current
vim.keymap.set("n", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")

-- Centering Commands
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "nzz")

-- Remap the movement keys to be sensible
-- I no longer find this sensible
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-j>", "<C-w>j")
-- vim.keymap.set("n", "<C-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Leader + x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})

-- Delete paste not to registry
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system registry
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Clear trailing whitespace
vim.keymap.set("n", "<F5>", function()
    vim.cmd([[
        let _s=@/
        %s/\s\+$//e
        let @/=_s
        nohl
        unlet _s
    ]])
end)

-- local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
-- vim.keymap.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
-- vim.keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
