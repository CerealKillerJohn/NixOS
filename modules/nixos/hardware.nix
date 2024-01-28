{
  config,
  isLaptop,
  lib,
  ...
}: {
  options.custom-nixos = {
    am5.enable = lib.mkEnableOption "B650E-E motherboard";
    bluetooth.enable = lib.mkEnableOption "Bluetooth" // {default = isLaptop;};
    hdds = {
      enable = lib.mkEnableOption "Desktop HDDs";
      wdred6 = lib.mkEnableOption "WD Red 6TB" // {default = config.custom-nixos.hdds.enable;};
      ironwolf22 = lib.mkEnableOption "Ironwolf Pro 22TB" // {default = config.custom-nixos.hdds.enable;};
      windows = lib.mkEnableOption "Windows" // {default = config.custom-nixos.hdds.enable;};
    };
    nvidia.enable = lib.mkEnableOption "Nvidia GPU";
    qmk.enable = lib.mkEnableOption "QMK";
    zfs = {
      enable = lib.mkEnableOption "zfs" // {default = true;};
      encryption = lib.mkEnableOption "zfs encryption" // {default = true;};
      snapshots = lib.mkEnableOption "zfs snapshots" // {default = true;};
    };
  };
}
