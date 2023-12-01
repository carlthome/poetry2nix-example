{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    let
      mkSystem = system:
        let pkgs = nixpkgs.legacyPackages."${system}";
        in {
          devShells.default = import ./shell.nix { inherit pkgs; };
          packages.default = import ./default.nix { inherit pkgs; };
        };
    in
    flake-utils.lib.eachDefaultSystem mkSystem;
}
