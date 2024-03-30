{config, pkgs, ...}:
{
  config = {
    programs.git = {
      enable = true;
      userEmail = "mateusz.luczynski02@gmail.com";
      userName = "mluczynskii";
    };
  };
}
