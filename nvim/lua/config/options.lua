-- Options are automatically loaded before lazy.nvim startup
-- Default options: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- Prettier corre siempre, aunque el proyecto no tenga .prettierrc
vim.g.lazyvim_prettier_needs_config = false

-- Autoformato al guardar con el fixer de ESLint, además de Prettier
vim.g.lazyvim_eslint_auto_format = true

-- Ignorar .editorconfig de los proyectos (para que siempre mande tu config)
vim.g.editorconfig = false

-- Tab = 4 espacios
vim.opt.tabstop = 4 -- ancho visual de un tab
vim.opt.shiftwidth = 4 -- ancho de cada nivel de indentación
vim.opt.softtabstop = 4 -- espacios que inserta/borra la tecla Tab
vim.opt.expandtab = true -- usar espacios, no tabs reales
