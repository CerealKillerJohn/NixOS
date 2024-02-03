{ config, pkgs, lib, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      arc-theme
      breeze-plymouth
#      (callPackage ../../packages/bar-protonmail/bar-protonmail.nix {})
      (callPackage ../../packages/boxbuddyrs/boxbuddyrs.nix {})
      distrobox
      fractal
      gimp
      glib
      ifuse
      jq
      libimobiledevice
      libnotify
      lm_sensors
      mpv
      obs-studio
      pkgs.python311Full
      plymouth
      ranger
      spotify
      spotifywm
      swappy
      usbmuxd
      wl-clipboard
      wlogout
      wlr-randr
      wofi
      zoom-us
      ];
  };
}
