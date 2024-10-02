{config, pkgs, ...}:
{ 
  config = {
    programs.vscode = {
      enable = true;
      package = pkgs.vscode.fhs;
      userSettings = {
      	"window.titleBarStyle" = "custom";
	
	"explorer.compactFolders" = false;

	"files.autoSave" = "afterDelay";

	"editor.fontFamily" = "JetBrainsMono Nerd Font, monospace, monospace";
	"editor.fontSize" = 33;
	"editor.fontLigatures" = true;
	"editor.cursorBlinking" = "expand";
	"editor.cursorWidth" = 3;
	"editor.wordWrap" = "on";
	"editor.minimap.enabled" = false;
	"editor.codeLens" = false;
	
	"workbench.statusBar.visible" = false;
	"workbench.tips.enabled" = false;
	"workbench.activityBar.location" = "top";
	"workbench.colorTheme" = "Catppuccin Frappé";
	"workbench.iconTheme" = "material-icon-theme";

	"extensions.ignoreRecommendations" = true;
      };
    };
  };
}
