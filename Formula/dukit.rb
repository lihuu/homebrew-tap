class Dukit < Formula
  desc "Cross-platform disk usage analyzer: scan directory trees, export JSON, browse line by line."
  homepage "https://tools.lihu.me/dukit"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/dukit-darwin-arm64.tar.gz"
      sha256 "6b963e1553bee80b4e850206b9a33505cca3e644d113ca0ad4cb0871d1574da4"

      def install
        bin.install "dukit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/dukit-linux-amd64.tar.gz"
      sha256 "f295c4a63568ebdef177b2ded0b04ccee6a252823c30c1e01e000c199135bec5"

      def install
        bin.install "dukit"
      end
    end
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/dukit --version")
  end
end
