return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        -- Fuerza a Prettier (JS/TS/HTML/CSS/JSON) a usar 4 espacios
        prettier = {
          prepend_args = { "--tab-width", "4" },
        },
        -- Fuerza a StyLua (Archivos .lua) a usar 4 espacios
        stylua = {
          prepend_args = { "--indent-width", "4", "--indent-type", "Spaces" },
        },
      },
    },
  },
}
