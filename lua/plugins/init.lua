LAZY_PLUGIN_SPEC = {}

function spec(item)
    table.insert(LAZY_PLUGIN_SPEC, {import = item})
end

spec("plugins.colourscheme")
spec("plugins.fugitive")

spec("plugins.telescope") -- fzf
-- spec("plugins.harpoon")

spec("plugins.lsp")
spec("plugins.treesitter")
spec("plugins.mason")

spec("plugins.misc")

require("plugins.lazy")
