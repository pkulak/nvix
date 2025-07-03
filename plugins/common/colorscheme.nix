{ config, ... }:
{
  colorschemes = {
    catppuccin = {
      enable = true;
      settings = {
        flavor = "mocha";
        background = {
          light = "macchiato";
          dark = "mocha";
        };
        italic = true;
        bold = true;
        dimInactive = false;
        transparent_background = true;
        term_colors = true;
        default_integrations = true;
        integrations = {
          blink_cmp = true;
          noice = true;
          nvim_surround = true;
          gitsigns = true;
          which_key = true;
          treesitter = true;
          treesitter_context = true;
          render_markdown = true;
          snacks = true;
          native_lsp = {
            enabled = true;
            inlay_hints = {
              background = true;
            };
            underlines = {
              errors = [ "underline" ];
              hints = [ "underline" ];
              information = [ "underline" ];
              warnings = [ "underline" ];
            };
          };
        };
      };
    };
  };

  colorschemes.tokyonight = {
    enable = false;
    settings = {
      style = "night";
      transparent = config.nvix.transparent;
      styles = {
        floats = if config.nvix.transparent then "transparent" else "dark";
        sidebars = if config.nvix.transparent then "transparent" else "dark";
        comments.italic = true;
        functions.italic = true;
        variables.italic = true;
        keywords = {
          italic = true;
          bold = true;
        };
      };
    };
  };
}
