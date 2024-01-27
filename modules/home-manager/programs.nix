{
  isNixOS,
  lib,
  ...
}: {
  options.custom = {
    deadbeef.enable = lib.mkEnableOption "deadbeef";
    ghostty.enable = lib.mkEnableOption "ghostty";
    gradience.enable = lib.mkEnableOption "gradience";
    helix.enable = lib.mkEnableOption "helix";
    kitty.enable = lib.mkEnableOption "kitty" // {default = isNixOS;};
    mpv-anime.enable = lib.mkEnableOption "mpv-anime" // {default = true;};
    obs-studio.enable = lib.mkEnableOption "obs-studio";
    pathofbuilding.enable = lib.mkEnableOption "pathofbuilding" // {default = isNixOS;};
    rclip.enable = lib.mkEnableOption "rclip";
    vlc.enable = lib.mkEnableOption "vlc";
    wallust = with lib.types; {
      enable = lib.mkEnableOption "wallust" // {default = true;};
      colorscheme = lib.mkOption {
        type = lib.types.nullOr lib.types.str;
        default = null;
        description = "The colorscheme to use. If null, will use the default colorscheme from the wallpaper.";
      };

      threshold = lib.mkOption {
        type = int;
        default = 20;
      };

      entries = lib.mkOption {
        type = attrsOf (submodule {
          options = {
            enable = lib.mkOption {
              type = bool;
              default = false;
              description = "Enable this entry";
            };
            text = lib.mkOption {
              type = str;
              description = "Content of the template file";
            };
            target = lib.mkOption {
              type = str;
              description = "Absolute path to the file to write the template (after templating), e.g. ~/.config/dunst/dunstrc";
            };
            onChange = lib.mkOption {
              type = str;
              description = "Shell commands to run when file has changed between generations. The script will be run after the new files have been linked into place.";
              default = "";
            };
          };
        });
        default = [];
        description = ''
          Example entries, which are just a file you wish to apply `wallust` generated colors to.
          template = "dunstrc"
        '';
      };
    };
  };
}
