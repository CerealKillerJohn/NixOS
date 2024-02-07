{ config, pkgs, lib, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      arc-theme
      breeze-plymouth
#      (callPackage ../../packages/bar-protonmail/bar-protonmail.nix {})
      (callPackage ../../packages/boxbuddyrs/boxbuddyrs.nix {})
      distrobox
      dolphin
      fractal
      glib
      grim
      ifuse
      jq
      libimobiledevice
      libnotify
      lm_sensors
      mpv
      obs-studio
      pkgs.python311Full
      ranger
      slurp
      spotify
      spotifywm
      swappy
      thunar
      usbmuxd
      wl-clipboard
      wlogout
      wlr-randr
      wofi
      ];
  };
}
