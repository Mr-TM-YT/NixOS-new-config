# Custom packages, that can be defined similarly to ones from nixpkgs
# You can build them using 'nix build .#example' or (legacy) 'nix-build -A example'

#{ pkgs ? (import ../nixpkgs.nix) { } }:
  # example = pkgs.callPackage ./example { };
#  let grub-theme = pkgs.callPackage ( import ./grub-theme.nix) {}; in {
#	  sddm-theme = pkgs.callPackage (import ./sddm-theme.nix) {};
#}

{ pkgs ? (import ../nixpkgs.nix) {} }: {
  grub-theme = pkgs.callPackage ./grub-theme.nix {};
  sddm-theme = pkgs.callPackage ./sddm-theme.nix {};
}
