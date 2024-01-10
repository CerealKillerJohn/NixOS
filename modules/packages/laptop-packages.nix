{ config, pkgs, lib, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      acpi
      arc-theme
      breeze-plymouth
      brightnessctl
      btop
      (callPackage ./spotify-adblock.nix {})
      cmatrix
      espanso-wayland
      fractal
      gimp
      glib
      ifuse
      jq
      killall
      libimobiledevice
      libnotify
      librewolf
      mpv
      nix-ld
      parsec-bin
      pkgs.python311Full
      plymouth
      ranger
      spotify
      spotifywm
      swappy
      usbmuxd
      webcord
      wl-clipboard
      wlogout
      wlr-randr
      wofi
      zoom-us
      ];
  };
}
