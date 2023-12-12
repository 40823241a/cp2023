{ pkgs }: {
  deps = [
    pkgs.libev
    pkgs.gnuplot
    pkgs.gd
    pkgs.ncurses.dev
  ];
  env = {
    PYTHON_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      pkgs.libev
    ];
  };
}
  