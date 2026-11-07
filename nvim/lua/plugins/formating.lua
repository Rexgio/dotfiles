return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                -- El extra de clangd no define formateador: sin esto se usa el del LSP
                c = { "clang-format" },
                cpp = { "clang-format" },
            },
            formatters = {
                -- JS/TS/JSX/TSX, JSON, CSS/HTML, Markdown, Tailwind...
                prettier = {
                    prepend_args = { "--tab-width", "4" },
                },
                -- Lua
                stylua = {
                    prepend_args = { "--indent-width", "4", "--indent-type", "Spaces" },
                },
                -- bash/sh
                shfmt = {
                    prepend_args = { "-i", "4" },
                },
                -- C/C++
                ["clang-format"] = {
                    prepend_args = {
                        "--style={BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, UseTab: Never}",
                    },
                },
                -- Ruby (rubocop usa 2 por defecto; forzamos un config global tuyo)
                rubocop = {
                    prepend_args = { "--config", vim.fn.stdpath("config") .. "/rubocop.yml" },
                },
            },
        },
    },
    -- Asegura que clang-format esté instalado
    {
        "mason-org/mason.nvim",
        opts = { ensure_installed = { "clang-format" } },
    },
}
