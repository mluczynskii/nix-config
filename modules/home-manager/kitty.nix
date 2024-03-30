{config, pkgs, ...}:
{
  imports = [];
  options = {};
  config = {
    programs.kitty = {
      enable = true;
      font.name = "JetBrainsMono Nerd Font";
      font.size = 18;
      settings = {
      	cursor_shape = "underline";
	open_url_with = "firefox";
	initial_window_width = 910;
	initial_window_height = 540;
	enable_audio_bell = false;
      };
      theme = "Forest Night";
    };
  };
}
