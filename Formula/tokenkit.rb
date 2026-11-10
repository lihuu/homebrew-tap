class Tokenkit < Formula
  desc "Modern, encrypted universal token manager with embedded SQLite and sub-10ms shell injection"
  homepage "https://lihuu.github.io/li-tools/tokenkit"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/tokenkit-darwin-arm64.tar.gz"
      sha256 "c5ff0dc23652ab95d384ee1b1a3fcfe64ed63cbdcc45062113221b34d4d86f00"

      def install
        bin.install "tokenkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/tokenkit-linux-amd64.tar.gz"
      sha256 "d7bdb205190de3bb68c941ceebd8805e2bf2661d233fd6e31800f7241e027734"

      def install
        bin.install "tokenkit"
      end
    end
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/tokenkit --version")
  end
end
