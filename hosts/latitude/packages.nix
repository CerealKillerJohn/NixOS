{ config, pkgs, lib, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      acpi
      arc-theme
      breeze-plymouth
      brightnessctl
      btop
      (callPackage ../../modules/nixos/spotify-adblock.nix {})
      (callPackage ../../packages/boxbuddyrs/boxbuddyrs.nix {})
      cmatrix
      distrobox
      espanso-wayland
      floorp
      fractal
      gimp
      glib
      ifuse
      jq
      killall
      libimobiledevice
      libnotify
      mpv
      nix-ld
      obs-studio
      parsec-bin
      pkgs.python311Full
      plymouth
      ranger
      sops
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
