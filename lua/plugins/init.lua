LAZY_PLUGIN_SPEC = {}

function spec(item)
    table.insert(LAZY_PLUGIN_SPEC, {import = item})
end

spec("plugins.colourscheme")
spec("plugins.fugitive")

spec("plugins.telescope")

spec("plugins.treesitter")
spec("plugins.lsp")
spec("plugins.mason")
require("plugins.lazy")
