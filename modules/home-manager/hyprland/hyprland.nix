{config, pkgs, ...}:
{
  config = {
    wayland.windowManager.hyprland = {
      enable = true;
      xwayland.enable = true;
      extraConfig = builtins.readFile ./frappe.conf;
      settings = {
        "$terminal" = "kitty";
	"$browser" = "firefox";
        "$mainMod" = "SUPER";

	exec-once = "waybar";
	
	env = [
	  "HYPRCURSOR_SIZE, 30"
	];

	input = {
	  touchpad = {
	    natural_scroll = true;
	  };
	};

	bind = [
	  "$mainMod, Q, killactive,"
	  "$mainMod, T, exec, $terminal"
	  "$mainMod, B, exec, $browser"

	  "$mainMod, 1, workspace, 1"
	  "$mainMod, 2, workspace, 2"
	  "$mainMod, 3, workspace, 3"
	  "$mainMod, 4, workspace, 4"
	  "$mainMod, 5, workspace, 5"
	  "$mainMod, 6, workspace, 6"
	  "$mainMod, 7, workspace, 7"
	  "$mainMod, 8, workspace, 8"

	  "$mainMod SHIFT, 1, movetoworkspace, 1"
	  "$mainMod SHIFT, 2, movetoworkspace, 2"
	  "$mainMod SHIFT, 3, movetoworkspace, 3"
	  "$mainMod SHIFT, 4, movetoworkspace, 4"
	  "$mainMod SHIFT, 5, movetoworkspace, 5"
	  "$mainMod SHIFT, 6, movetoworkspace, 6"
	  "$mainMod SHIFT, 7, movetoworkspace, 7"
	  "$mainMod SHIFT, 8, movetoworkspace, 8"
	];
      };
    };
  };
}
