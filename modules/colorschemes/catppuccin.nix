{ ... }:
{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      background = {
        light = "macchiato";
        dark = "mocha";
      };
      flavour = "mocha"; # "latte", "mocha", "frappe", "macchiato" or raw lua code
      disable_bold = false;
      disable_italic = false;
      disable_underline = false;
      transparent_background = true;
      term_colors = true;
      default_integrations = true;
      integrations = {
        cmp = true;
        noice = true;
        gitsigns = true;
        which_key = true;
        treesitter = true;
        treesitter_context = true;
        mini.enabled = true;
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
}
