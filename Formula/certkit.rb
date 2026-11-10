class Certkit < Formula
  desc "Zero-dependency CLI for enterprise PKI and certificate management"
  homepage "https://lihuu.github.io/li-tools/certkit"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/certkit-darwin-arm64.tar.gz"
      sha256 "e19d1a580dec7052e786c63fe766900e5c286aaa62824070742ee16368194eb5"

      def install
        bin.install "certkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/certkit-linux-amd64.tar.gz"
      sha256 "94dcb74855aa544e78ad3796617ea5992f3f9f184f67a90eefb074b2cd6bd426"

      def install
        bin.install "certkit"
      end
    end
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/certkit --version")
  end
end
