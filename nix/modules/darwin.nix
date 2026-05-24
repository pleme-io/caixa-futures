# nix/modules/darwin.nix — auto-generated from futures-rs.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.futures-rs; in {
  options.services.futures-rs = {
    enable = lib.mkEnableOption "futures-rs";
    package = lib.mkOption { type = lib.types.package; default = pkgs.futures-rs or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
