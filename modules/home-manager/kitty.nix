{config, pkgs, ...}:
{
  imports = [];
  options = {};
  config = {
    programs.kitty = {
      enable = true;
      font.name = "JetBrainsMono Nerd Font";
      font.size = 25;
      settings = {
      	cursor_shape = "underline";
	open_url_with = "firefox";
	initial_window_width = 910;
	initial_window_height = 540;
	enable_audio_bell = false;
	background_opacity = "0.9";
      };
      theme = "Catppuccin-Frappe";
    };
  };
}
