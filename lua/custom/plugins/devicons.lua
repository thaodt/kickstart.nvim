return {
    {
      "nvim-tree/nvim-web-devicons",
      config = function()
        local devicons = require "nvim-web-devicons"
  
        -- Get the OCaml icon configuration
        local ocaml_icon, ocaml_color = devicons.get_icon_color("ml", "ocaml")

        -- Get the Rust icon configuration
        local rust_icon, rust_color = devicons.get_icon_color("rs", "rust")

        -- Get the Toml icon configuration
        local toml_icon, toml_color = devicons.get_icon_color("toml", "toml")
  
        -- devicons.setup {
        --   override_by_filename = {
        --   },
        -- }
  
        -- Set the same icon and color for mlx files
        devicons.set_icon {
          mlx = {
            icon = ocaml_icon,
            color = ocaml_color,
            name = "mlx",
          },
          re = {
            icon = ocaml_icon,
            color = "#dd4B39",
            name = "reason",
          },
          dune = {
            icon = ocaml_icon,
            color = "#b0b1b0",
            name = "dune",
          },
          ["dune-project"] = {
            icon = ocaml_icon,
            color = "#b0b1b0",
            name = "dune-project",
          },
          rs = {
            icon = rust_icon,
            color = rust_color,
            name = "rust",
          },
          toml = {
            icon = toml_icon,
            color = toml_color,
            name = "toml",
          },
        }
      end,
    },
  }