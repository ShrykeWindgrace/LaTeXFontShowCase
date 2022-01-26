with import <nixpkgs> {};

stdenv.mkDerivation rec {
    name = "fonts";
    buildInputs = [
      cabin
      eb-garamond
      yanone-kaffeesatz
      (texlive.combine { inherit (texlive) scheme-basic xetex fontspec; })
    ];
}
