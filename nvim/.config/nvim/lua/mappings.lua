require "nvchad.mappings"

local map = vim.keymap.set

-- Básicos de NvChad & General
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "kj", "<Esc>", { desc = "Escape insert mode" })
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Guardado (Tu configuración)
map("n", "<C-s>", ":w<CR>", { noremap = true, desc = "Save file" })
map("i", "<C-s>", "<C-o>:write<CR>a", { noremap = true, desc = "Save file" })

-- Movimiento de líneas (Estilo LazyVim / Tu config)
map("n", "J", ":m .+1<CR>==", { desc = "Move line down", silent = true })
map("n", "K", ":m .-2<CR>==", { desc = "Move line up", silent = true })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down", silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up", silent = true })

-- Navegación de Ventanas (LazyVim Style)
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Gestión de Splits (Tus prefijos <leader>s + LazyVim)
map("n", "<leader>ss", ":vsplit<CR>", { desc = "Split window vertically" })
map("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
map("n", "<leader>sv", "<C-w>=", { desc = "Make windows equal size" })
map("n", "<leader>sl", "<cmd>close<CR>", { desc = "Close current split" })

-- Buffers y Pestañas (Mezcla LazyVim + Tu config)
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bd", function() require("nvchad.tabufline").close_buffer() end, { desc = "Delete buffer" })
map("n", "H", "<cmd>bprevious<cr>", { desc = "Prev buffer" }) -- Manteniendo tu H/L
map("n", "L", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Archivos y Telescopio (LazyVim total)
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Explorer (NvimTree)" })
map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Find files (Root)" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
map("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "Grep (Search)" })
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string" })
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor" })
map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- LSP (Tus mapeos corregidos para NvChad/LazyVim)
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Show LSP definitions" })
map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Show LSP implementations" })
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename (LazyVim style)" })
map("n", "<leader>srn", vim.lsp.buf.rename, { desc = "Smart rename" })
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line diagnostics" })
map("n", "g?", vim.lsp.buf.hover, { desc = "Show documentation" })

-- Números
map("n", "<leader>+", "<C-a>", { desc = "Increment number" })
map("n", "<leader>-", "<C-x>", { desc = "Decrement number" })
