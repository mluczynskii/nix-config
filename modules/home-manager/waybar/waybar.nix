{config, pkgs, ...}:
{
  config = {
    programs.waybar = {
       enable = true;
       style = ./style.css;
       settings = {
         mainBar = {
           layer = "top";
           position = "top";
           height = 35;
           spacing = 4;
           margin-top = 10;
           margin-bottom = 5;

           modules-right = [
	     "backlight"
	     "keyboard-state"
	     "battery" 
	     "tray"
	     "clock"
	   ];

           "keyboard-state" = {
             numlock = true;
             capslock = true;
             format = " {name} {icon}";
             format-icons = {
               locked = "";
               unlocked = "";
             };
           };

           "tray" = {
             icon-size = 20;
             spacing = 10;
           };

           "clock" = {
             tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
             format-alt = "{:%Y-%m-%d}";
           };

           "backlight" = {
             format = "{percent}% {icon}";
             format-icons = ["" ""];
    	   };

           "battery" = {
             states = {
               "good" = 95;
               "warning" = 30;
               "critical" = 15;
             };
             format = "{capacity}% {icon}";
             format-charging = "{capacity}% ";
             format-plugged = "{capacity}% ";
             format-alt = "{time} {icon}";
             format-icons = ["" "" "" "" ""];
    	   };
         };
       };
    };
  };
}

