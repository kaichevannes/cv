{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = [
    (pkgs.texlive.combine {
      inherit (pkgs.texlive)
        scheme-basic
        latexmk
        geometry
        hyperref
        xcolor
        soul
        lm
        titlesec
        pgf
        etoolbox
        ;
    })
  ];
}
