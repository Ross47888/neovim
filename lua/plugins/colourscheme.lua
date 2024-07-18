-- Colourscheme
return { 
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000, -- High priority at startupt
    lazy = false,
    init = function()
        vim.cmd.colorscheme 'oxocarbon'
    end,
}
