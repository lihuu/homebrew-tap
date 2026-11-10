class Skillkit < Formula
  desc "Personal skills repository manager and parallel distribution CLI for AI agents"
  homepage "https://tools.lihu.me/skillkit"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/skillkit-darwin-arm64.tar.gz"
      sha256 "335b98015feed1764f6c179b5b2b8ec1549969d35339bb85ca9746f3bbd4c4bb"

      def install
        bin.install "skillkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/skillkit-linux-amd64.tar.gz"
      sha256 "63084d2a51e676c4aa1185ff9e014d0d12837bda9eef84425263bf63726d1a9d"

      def install
        bin.install "skillkit"
      end
    end
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/skillkit --version")
  end
end
