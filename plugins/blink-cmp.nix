{ lib, ... }:
let
  inherit (lib.nixvim) mkRaw;
in
{
  plugins = {
    luasnip.enable = true;
    blink-cmp = {
      enable = true;
      settings = {
        completion.menu.border = "rounded";
        keymap = {
          "<C-j>" = [ "select_next" "fallback" ];
          "<C-k>" = [ "select_prev" "fallback" ];

          "<C-l>" = [ "snippet_forward" "fallback" ];
          "<C-h>" = [ "snippet_backward" "fallback" ];
          "<C-u>" = [ "scroll_documentation_up" "fallback" ];
          "<C-d>" = [ "scroll_documentation_down" "fallback" ];
          "<CR>" = [ "select_and_accept" "fallback" ];
          "<TAB>" = [ "select_and_accept" "fallback" ];
        };
      };
    };
  };
}
