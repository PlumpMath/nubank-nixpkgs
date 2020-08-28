self: super:
let
  pkgs = super.pkgs;
  callPackage = super.lib.callPackageWith super;
in
{
  nubank = rec {
    dart = callPackage ./pkgs/dart {};
    flutter = callPackage ./pkgs/flutter {};
    patch-flutter = callPackage ./pkgs/patch-flutter {};
    hover = callPackage ./pkgs/hover {
      inherit (super.xorg);
      go = pkgs.go;
      flutter = flutter;
    };
  };
}
