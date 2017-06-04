class Fornax < Formula
  desc "Fornax (static site generator using type safe F# DSL to define page templates)"
  homepage "https://gitlab.com/Krzysztof-Cieslak/Fornax"
  url "https://gitlab.com/Krzysztof-Cieslak/Fornax/uploads/7709e2d57639f8520904f4370d930d98/Fornax.zip"
  sha256 "8a1c15cf00875cda95ffc7a8e2eef413d7963ec2910e7e501f9af2057997945a"
  depends_on "mono"

  bottle :unneeded

  def install
    libexec.install Dir["./*"]
    ("forge").write <<-EOS.undent
      #!/bin/sh
      mono #{libexec}/Fornax.exe "$@"
    EOS
  end
end