{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }: let
    system = "aarch64-linux";
  in {
    devShells."${system}".default = let
      pkgs = import nixpkgs {
        inherit system;
      };
    in pkgs.mkShell {
      packages = builtins.attrValues {
        inherit (pkgs)
        python3;
        b = pkgs.callPackage ./bootdev.nix {};
      };
   };
  };
}

