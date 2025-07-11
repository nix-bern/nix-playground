{
  stdenv,
  fetchurl,
  ffmpeg,
}:

stdenv.mkDerivation {
  name = "hello-2.1.1";
  builder = ./builder.sh;
  nativeBuildInputs = [ ffmpeg ];
  src = fetchurl {
    url = "mirror://gnu/hello/hello-2.12.1.tar.gz";
    sha256 = "sha256-jZkUKv2SV28wsM18tCqNxoCZmLxdYH2Idh9RLibH2yA=";
  };
}
