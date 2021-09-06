{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    flakeUtils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flakeUtils }:
    flakeUtils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        devShell = pkgs.mkShell { nativeBuildInputs = [ pkgs.ansible ]; };    
      }
    );
}
