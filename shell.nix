{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11") {} }:

pkgs.mkShellNoCC {
  packages = with pkgs; [
     (python3.withPackages (ps: with ps; with python3Packages; [
      jupyter
      ipython
      jupyterlab
      pandas
      numpy
      matplotlib
    ]))
    curl
    jq
  ];
 shellHook = "jupyter-lab";
}
