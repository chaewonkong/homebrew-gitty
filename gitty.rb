class Gitty < Formula
    desc "✨ Gitty, a handy git commit formatter"
    homepage "https://github.com/chaewonkong/gitty"
    url "https://github.com/chaewonkong/gitty/archive/refs/tags/v1.0.5.tar.gz"
    sha256 "08e1084fe9e0d6915d76ae4e6e20a2bd8dc0dfee01918d9d7e2a009500a7cfa7"

    if Hardware::CPU.intel?
      url "https://github.com/chaewonkong/gitty/releases/download/v1.0.7/gitty-macos-intel.tar.gz"
      sha256 "8b717523a9ddb548d2fd6009ca4f565160ece97f2d044e446f8c657e69fa75e8"
    elsif Hardware::CPU.arm?
      url "https://github.com/chaewonkong/gitty/releases/download/v1.0.7/gitty-macos-arm.tar.gz"
      sha256 "8dd4215f8907c364cc9d1b5b8dd0bb253b71255949d9b3e6ab334cb43ef9e495"
    end
  
    def install
      bin.install "gitty"
    end
  
    test do
      system "#{bin}/gitty", "--version"
    end
  end