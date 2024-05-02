{config, pkgs, ...}:
{
  config = {
    programs.waybar = {
      enable = true;
      style = ./style.css;
      settings = builtins.fromJSON (builtins.readFile ./settings.json);
    };
  };
}

