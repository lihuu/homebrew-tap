class Tokenkit < Formula
  desc "Modern, encrypted universal token manager with embedded SQLite and sub-10ms shell injection"
  homepage "https://lihuu.github.io/li-tools/tokenkit"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.5.0/tokenkit-darwin-arm64.tar.gz"
      sha256 "8445841bececa5f5b353d1f37a4667b3aee8f3695d8824b6122d69b1ca953e58"

      def install
        bin.install "tokenkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.5.0/tokenkit-linux-amd64.tar.gz"
      sha256 "d109fd5010334031aacd770be77eabe9d696220bb4daff9bbf3c1be9db8a7fd5"

      def install
        bin.install "tokenkit"
      end
    end
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/tokenkit --version")
  end
end
