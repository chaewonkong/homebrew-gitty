class Gitty < Formula
    desc "✨ Gitty, a handy git commit formatter"
    homepage "https://github.com/chaewonkong/gitty"
    url "https://github.com/chaewonkong/gitty/archive/refs/tags/v1.0.5.tar.gz"
    sha256 "08e1084fe9e0d6915d76ae4e6e20a2bd8dc0dfee01918d9d7e2a009500a7cfa7"

    if Hardware::CPU.intel?
      url "https://github.com/chaewonkong/gitty/releases/download/v1.0.8/gitty-macos-intel.tar.gz"
      sha256 "51b731af9d08f0b02794ee3ef5c94a8a898647042076ede7c7d65897ebf07e31"
    elsif Hardware::CPU.arm?
      url "https://github.com/chaewonkong/gitty/releases/download/v1.0.8/gitty-macos-arm.tar.gz"
      sha256 "379e7d682337243b6eb14910de5005830deb79cd069c212f448598655cd47b75"
    end
  
    def install
      bin.install "gitty"
    end
  
    test do
      system "#{bin}/gitty", "--version"
    end
  end