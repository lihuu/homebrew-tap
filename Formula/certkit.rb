class Certkit < Formula
  desc "Zero-dependency CLI for enterprise PKI and certificate management"
  homepage "https://lihuu.github.io/li-tools/certkit"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.1.0/certkit-darwin-arm64"
      sha256 "afb81acf5ac70095153c3e249b430ac6bfca580c0050a17fee0fc0ca672b771b"

      def install
        bin.install "certkit-darwin-arm64" => "certkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.1.0/certkit-linux-amd64"
      sha256 "7ba07365e6a96bc49da636d5a5bda587903b8da5232c3c724aeaecaac9fb561c"

      def install
        bin.install "certkit-linux-amd64" => "certkit"
      end
    end
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/certkit --version")
  end
end
