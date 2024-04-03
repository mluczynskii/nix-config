{config, pkgs, ...}:
{
  config = {
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      shellAliases = {
        config = "cd ~/Pulpit/nix-config";
        update-system = "config && sudo nixos-rebuild switch --flake .#nixos";
	update-home = "config && home-manager switch --flake .#mluczynski@nixos";
      };
    };
  };
}
