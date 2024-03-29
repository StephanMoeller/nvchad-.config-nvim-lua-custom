---@type ChadrcConfig
local M = {}
M.ui = {
    transparency = true,
    theme = "tokyonight",
    cmp = {
        style = "atom",
    },
    tabufline = {
        enabled = false,
    },
    statusline = {
        theme = "minimal",
        separator_style = "round",
        overriden_modules = function(modules)
            modules[#modules] = require("custom.configs.statusline").cursor_position()
            -- modules[#modules + 1] = require("custom.configs.statusline").clock()
            -- modules[#modules] = require("custom.configs.statusline").fileInfo()
            table.remove(modules, 2)
            table.insert(modules, 2, require("custom.configs.statusline").fileInfo())

            -- table.insert(modules, 8, require("custom.configs.statusline").showcmd())
        end,
    },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
