{
  lib,
  fetchFromGitHub,
  hatchling,
  setuptools,
  wheel,
  buildPythonPackage,
}:

buildPythonPackage rec {
  pname = "header42";
  version = "1.0.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "jukefr";
    repo = "header42";
    rev = "7e94c7f2d1ebd31aa50fd9755c9cc4fb14732178";
    sha256 = "0b6161n55dwakzszmiywaviz1w4lhxv90ybba5ffyak5ym0fj5kn";
  };

  build-system = [
    hatchling
    setuptools
    wheel
  ];

  dependencies = [ ];

  meta = with lib; {
    description = "42 header (rewritten in python and working with stdin/stdout)";
    homepage = "https://github.com/jukefr/header42";
    license = licenses.mit;
    maintainers = with maintainers; [ jukefr ];
  };

}
