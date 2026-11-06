class Certkit < Formula
  desc "Zero-dependency CLI for enterprise PKI and certificate management"
  homepage "https://lihuu.github.io/li-tools/certkit"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.5.0/certkit-darwin-arm64.tar.gz"
      sha256 "2dc1de329e8e29e9b18e3e9c874720f5057f9d2579b594b017777be1d1a2c356"

      def install
        bin.install "certkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.5.0/certkit-linux-amd64.tar.gz"
      sha256 "2683e33646f63664bc824a16dd1dbe6f48db3cb7d98978343465f257c10cc6fc"

      def install
        bin.install "certkit"
      end
    end
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/certkit --version")
  end
end
