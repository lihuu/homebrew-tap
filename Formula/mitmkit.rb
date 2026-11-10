class Mitmkit < Formula
  desc "Local HTTPS MITM proxy for development traffic capture with JSONL output."
  homepage "https://tools.lihu.me/mitmkit"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/mitmkit-darwin-arm64.tar.gz"
      sha256 "29f78463d33147e5e74c797f9076cda42943fc446b1f61c7d4bbee2709f04a72"

      def install
        bin.install "mitmkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/mitmkit-linux-amd64.tar.gz"
      sha256 "af4d9ed95874ca785e3cebcbb88c3754916ff5293740d83ea95275372fb449cf"

      def install
        bin.install "mitmkit"
      end
    end
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/mitmkit --version")
  end
end
