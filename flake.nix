{
  description = "A Typst resume";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    typix.url = "github:loqusion/typix";
    typst-design.url = "github:bmabsout/typst-design";
    typst-design.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils, typix, typst-design }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };

        typixLib = typix.lib.${system};
        
        # The design system, importable as "@local/typst-design:<version>".
        designPackages = typst-design.packages.${system}.default;

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
          TYPST_PACKAGE_PATH = designPackages;
        };
        packages.cv = typixLib.buildTypstProject {
          name = "cv";
          src = ./.;
          typstSource = "cv.typ";
          inherit fontPaths;
          TYPST_PACKAGE_PATH = designPackages;
        };

        devShells.default = typixLib.devShell {
          inherit fontPaths;
          packages = [
            (pkgs.python3.withPackages (ps: with ps; [
              beautifulsoup4
              requests
            ]))
          ];
          # in order to get the correct value from datetime.today()
          shellHook = ''
            export TYPST_PACKAGE_PATH=${designPackages}
            unset SOURCE_DATE_EPOCH
          '';
        };
      }
    );
}
