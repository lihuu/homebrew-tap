class Tokenkit < Formula
  desc "Modern, encrypted universal token manager with embedded SQLite and sub-10ms shell injection"
  homepage "https://lihuu.github.io/li-tools/tokenkit"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.2.0/tokenkit-darwin-arm64"
      sha256 "4876b9323411a5c305ffe8cff17143b91a520fb678a134ff554b8f46247d146f"

      def install
        bin.install "tokenkit-darwin-arm64" => "tokenkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.2.0/tokenkit-linux-amd64"
      sha256 "280799d4a6039da9a163d77a26458699a2ae3b066f15f5cd6e2213ffa2972b88"

      def install
        bin.install "tokenkit-linux-amd64" => "tokenkit"
      end
    end
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/tokenkit --version")
  end
end
