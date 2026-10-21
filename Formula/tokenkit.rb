class Tokenkit < Formula
  desc "Modern, encrypted universal token manager with embedded SQLite and sub-10ms shell injection"
  homepage "https://lihuu.github.io/li-tools/tokenkit"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.3.0/tokenkit-darwin-arm64"
      sha256 "27ffe4d9fa10f9dff65bb9c4b3b4fdfc4a61b6579a3ae9c6f2f9fbc110b7e703"

      def install
        bin.install "tokenkit-darwin-arm64" => "tokenkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.3.0/tokenkit-linux-amd64"
      sha256 "971b342c8953429dda7b033af68a52f14f8dd3b40fe9adf5c021886db667d5dd"

      def install
        bin.install "tokenkit-linux-amd64" => "tokenkit"
      end
    end
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/tokenkit --version")
  end
end
