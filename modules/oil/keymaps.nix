{ config, ... }:
let
  inherit (config.nvix.mkKey) mkKeymap;
in
{
  keymaps = [
    (mkKeymap "n" "-" "<cmd>:Oil --float --preview<cr>" "Oil Explorer")
    (mkKeymap "n" "<leader>e" "<cmd>:lua Snacks.explorer()<cr>" "Snacks Explorer")
  ];
}
