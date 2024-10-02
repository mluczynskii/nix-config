{ stdenv, fetchzip }:
{
  sddm-catpuccin = stdenv.mkDerivation rec {
    pname = "sddm-catpuccin";
    version = "1.0";
    dontBuild = true;
    installPhase = ''
      mkdir -p $out/share/sddm/themes
      cp -aR $src $out/share/sddm/themes/sddm-catpuccin
    '';
    src = fetchzip {
      url = "https://github.com/catppuccin/sddm/releases/download/v1.0.0/catppuccin-frappe.zip";
      sha256 = "5QP+k7r3MFLXpdTdewHXxQnh+GAjGsFzymrjb9dy7Vs=";
    };
  };
}
