class Gpgkit < Formula
  desc "One command for the whole life of a GPG key"
  homepage "https://lihuu.github.io/li-tools/gpgkit"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.5.0/gpgkit-darwin-arm64.tar.gz"
      sha256 "f3d53c744e54332693a20902f2cb5367ba64564b1bb52f6657d33c485cf3d33c"

      def install
        bin.install "gpgkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.5.0/gpgkit-linux-amd64.tar.gz"
      sha256 "d51139e96b22db98e1102f8456245ca75a5bef8b081dbb19b0897c87cb69bd30"

      def install
        bin.install "gpgkit"
      end
    end
  end

  test do
    assert_match "gpgkit", shell_output("#{bin}/gpgkit --help")
  end
end
