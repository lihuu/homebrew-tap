class Tokenkit < Formula
  desc "Modern, encrypted universal token manager with embedded SQLite and sub-10ms shell injection"
  homepage "https://lihuu.github.io/li-tools/tokenkit"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.4.0/tokenkit-darwin-arm64.tar.gz"
      sha256 "070f1597d0d8add88048b311f0cc3804097b3e51e191aeb5f9f4c27e4565ce6b"

      def install
        bin.install "tokenkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.4.0/tokenkit-linux-amd64.tar.gz"
      sha256 "7b174cfe6e836a2026bd1581b967eb0e37e1b2eec8bb0fa552b2de7fe9c1099e"

      def install
        bin.install "tokenkit"
      end
    end
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/tokenkit --version")
  end
end
