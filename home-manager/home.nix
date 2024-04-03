{ config, pkgs, outputs, ... }:

{
  imports = [
    outputs.homeManagerModules.kitty
    outputs.homeManagerModules.git
    outputs.homeManagerModules.zsh
    outputs.homeManagerModules.hyprland
    outputs.homeManagerModules.waybar
  ];
  
  home.username = "mluczynski";
  home.homeDirectory = "/home/mluczynski";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = [ 
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  fonts.fontconfig.enable = true;

  home.file = {

  };

  home.sessionVariables = {
    
  };

  programs.home-manager.enable = true;
}
