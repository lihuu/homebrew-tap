class Gpgkit < Formula
  desc "One command for the whole life of a GPG key"
  homepage "https://lihuu.github.io/li-tools/gpgkit"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.3.0/gpgkit-darwin-arm64"
      sha256 "8e22c1012361e40304e5b109c00bf2a8272ed29aa4dd59ff9669f413d656ee87"

      def install
        bin.install "gpgkit-darwin-arm64" => "gpgkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.3.0/gpgkit-linux-amd64"
      sha256 "b4cc2657ab90175302a84036209fcd60cfc89e6d74ed7b14a7f8390cc3a1637d"

      def install
        bin.install "gpgkit-linux-amd64" => "gpgkit"
      end
    end
  end

  test do
    assert_match "gpgkit", shell_output("#{bin}/gpgkit --help")
  end
end
