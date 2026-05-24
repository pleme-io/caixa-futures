# nix/modules/home-manager.nix — auto-generated from futures-rs.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.futures-rs; in {
  options.programs.futures-rs = {
    enable = lib.mkEnableOption "futures-rs";
    package = lib.mkOption { type = lib.types.package; default = pkgs.futures-rs or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
