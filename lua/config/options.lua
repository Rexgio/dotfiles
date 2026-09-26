-- lua/config/options.lua

-- Only run Prettier if the project actually has a Prettier config file
-- (stops LazyVim from reformatting projects that don't use Prettier)
vim.g.lazyvim_prettier_needs_config = true

-- Auto-format on save using ESLint's own fixer, in addition to Prettier
vim.g.lazyvim_eslint_auto_format = true
