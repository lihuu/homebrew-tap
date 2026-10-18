class Certkit < Formula
  desc "Zero-dependency CLI for enterprise PKI and certificate management"
  homepage "https://lihuu.github.io/li-tools/certkit"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.2.0/certkit-darwin-arm64"
      sha256 "1eb55da5bedb027c94fc91063e211b558dc90d6d5ae083aa62b8b7225ade3ec1"

      def install
        bin.install "certkit-darwin-arm64" => "certkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.2.0/certkit-linux-amd64"
      sha256 "160309dee9ac7a8f3b22e74b89e0c0c4e6e4afc88ecd8b88765ff1aad921bfa2"

      def install
        bin.install "certkit-linux-amd64" => "certkit"
      end
    end
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/certkit --version")
  end
end
