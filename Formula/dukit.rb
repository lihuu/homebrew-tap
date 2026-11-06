class Dukit < Formula
  desc "Cross-platform disk usage analyzer: scan directory trees, export JSON, browse line by line."
  homepage "https://tools.lihu.me/dukit"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.5.0/dukit-darwin-arm64.tar.gz"
      sha256 "c521ed4f0c1aa07e6bc374d40f3232a64bc9a5e70c2717f9025530423bf88b38"

      def install
        bin.install "dukit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.5.0/dukit-linux-amd64.tar.gz"
      sha256 "d0806dc1ffb0194ae910640aec4ef19432620d85e39d076ac8c736d46007aecc"

      def install
        bin.install "dukit"
      end
    end
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/dukit --version")
  end
end
