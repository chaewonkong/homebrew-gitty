class Gitty < Formula
    desc "✨ Gitty, a handy git commit formatter"
    homepage "https://github.com/chaewonkong/gitty"
    url "https://github.com/chaewonkong/gitty/archive/refs/tags/v1.0.5.tar.gz"
    sha256 "08e1084fe9e0d6915d76ae4e6e20a2bd8dc0dfee01918d9d7e2a009500a7cfa7"
  
    def install
      bin.install "gitty"
    end
  
    test do
      system "#{bin}/gitty", "--version"
    end
  end