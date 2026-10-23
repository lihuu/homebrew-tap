class Certkit < Formula
  desc "Zero-dependency CLI for enterprise PKI and certificate management"
  homepage "https://lihuu.github.io/li-tools/certkit"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.4.0/certkit-darwin-arm64.tar.gz"
      sha256 "df9299cbe573288ec2589b8eb514e184dd18bd93f3ae298a7225debf5eb280be"

      def install
        bin.install "certkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.4.0/certkit-linux-amd64.tar.gz"
      sha256 "0c156a850035b9b55300bf2487d30478c48f9946864c56acb8ae2fdaeeeef44d"

      def install
        bin.install "certkit"
      end
    end
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/certkit --version")
  end
end
