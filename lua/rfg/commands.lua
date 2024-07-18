function ColorMyPencils(color)
    priority=1000
    color = color or "oxocarbon"
    vim.cmd.colorscheme(color)
end
