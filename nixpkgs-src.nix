{ system ? builtins.currentSystem, ... }:

import (builtins.fetchTarball {
  url = "https://github.com/nixos/nixpkgs/archive/c38ca58c0b4b5d9423609c58636988a9f81325d6.tar.gz";
  sha256 = "14bim8bsswilv583wk0nm6cgmnffm6lmb1ds87g3rjizf4bfq8rg";
}) {
  inherit system;
  config = { allowUnfree = true; };
}