{
  fetchNixpkgs = import ./fetch-nixpkgs.nix;
  cleanSourceHaskell = import ./clean-source-haskell.nix;
  haskellPackages = ./haskell-packages.nix;
  maybeEnv = import ./maybe-env.nix;
  jemallocOverlay = import ./overlays/jemalloc.nix;
  getPackages = import ./get-packages.nix;
  tests = {
    hlint = ./tests/hlint.nix;
    shellcheck = ./tests/shellcheck.nix;
    stylishHaskell = ./tests/stylish-haskell.nix;
  };
}
