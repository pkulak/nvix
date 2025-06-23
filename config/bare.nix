{ self, lib, ... }:
{
  imports = [
    self.nvixModules.utils
    self.nvixModules.general
    self.nvixModules.buffer
    self.nvixModules.colorschemes
    self.nvixModules.snacks
  ];
  colorscheme = lib.mkDefault "tokyonight"; # as it has light variant also
}
