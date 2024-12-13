{
  description = "A Typst resume";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    typix.url = "github:loqusion/typix";
  };

  outputs = { self, nixpkgs, flake-utils, typix }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };

        typixLib = typix.lib.${system};
        
        fontPaths = [
          "./fonts"
          # "${pkgs.eb-garamond}/share/fonts/opentype"
          "${pkgs.libertinus}/share/fonts/opentype"
          "${pkgs.font-awesome_5}/share/fonts/truetype"
          "${pkgs.font-awesome_5}/share/fonts/opentype"
        ];
      in
      {
        packages.resume = typixLib.buildTypstProject {
          name = "resume";
          src = ./.;
          typstSource = "resume.typ";
          inherit fontPaths;
        };
        packages.cv = typixLib.buildTypstProject {
          name = "cv";
          src = ./.;
          typstSource = "cv.typ";
          inherit fontPaths;
        };

        devShells.default = typixLib.devShell {
          inherit fontPaths;
          packages = [
            (pkgs.python3.withPackages (ps: with ps; [
              beautifulsoup4
              requests
            ]))
          ];
        };
      }
    );
}
