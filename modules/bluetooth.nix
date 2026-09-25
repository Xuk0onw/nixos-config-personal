{ pkgs, ... }:

{
 hardware.enableRedistributableFirmware = true;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        Experimental = true;
        FastConnectable = true;
      };
    };
  };
  services.blueman.enable = true;
  environment.systemPackages = with pkgs; [
    bluez
    bluez-tools
    blueman
  ];
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };
}
