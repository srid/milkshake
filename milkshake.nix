{ mkDerivation, base, directory, extra, pandoc, shake, stdenv
, unordered-containers
}:
mkDerivation {
  pname = "milkshake";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [
    base directory extra pandoc shake unordered-containers
  ];
  testHaskellDepends = [ base shake ];
  homepage = "https://github.com/emilaxelsson/milkshake";
  description = "Utilities for building static sites using Shake";
  license = stdenv.lib.licenses.bsd3;
}
