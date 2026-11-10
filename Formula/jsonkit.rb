class Jsonkit < Formula
  desc "Format, highlight and query JSON with RFC 9535 JSONPath."
  homepage "https://tools.lihu.me/jsonkit"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/jsonkit-darwin-arm64.tar.gz"
      sha256 "e5cb1d8da8b6d27e72f41bd9410218431b03503d93a89d7fdd42abdd84e01431"

      def install
        bin.install "jsonkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/jsonkit-linux-amd64.tar.gz"
      sha256 "cd04ed56133a71c594abe60fc8d25ac993b15bdffadcd076a0a7445fcbc28e20"

      def install
        bin.install "jsonkit"
      end
    end
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/jsonkit --version")
  end
end
