#
{
  lib,
  ...
}:
let
  inherit (lib) mkDefault;
in
{
  imports = [
    ../.
    ../../../common/cpu/intel/haswell/default.nix
  ];

  services.xserver.videoDrivers = mkDefault [ "intel" ];

  hardware = {
    graphics = {
      enable = mkDefault true;
      enable32Bit = mkDefault true;
    };
  };
}
