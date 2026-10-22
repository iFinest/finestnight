---@class finestnight.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias finestnight.Highlights table<string,finestnight.Highlight|string>

---@alias finestnight.HighlightsFn fun(colors: ColorScheme, opts:finestnight.Config):finestnight.Highlights

---@class finestnight.Cache
---@field groups finestnight.Highlights
---@field inputs table
