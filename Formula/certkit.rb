class Certkit < Formula
  desc "Zero-dependency CLI for enterprise PKI and certificate management"
  homepage "https://lihuu.github.io/li-tools/certkit"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.3.0/certkit-darwin-arm64"
      sha256 "8cd1a8f75dd4a18472a8a2b1f9b5149323e8a11d866500ce1c3405a65feefb11"

      def install
        bin.install "certkit-darwin-arm64" => "certkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.3.0/certkit-linux-amd64"
      sha256 "2cf19cddd84eba4174e6bcc18db8f9d739de73a229761ee8e3c5559d2cbd7478"

      def install
        bin.install "certkit-linux-amd64" => "certkit"
      end
    end
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/certkit --version")
  end
end
