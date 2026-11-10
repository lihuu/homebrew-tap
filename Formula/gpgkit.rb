class Gpgkit < Formula
  desc "One command for the whole life of a GPG key"
  homepage "https://lihuu.github.io/li-tools/gpgkit"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/gpgkit-darwin-arm64.tar.gz"
      sha256 "e588ea7cc4f1362a4f7fa4a7867b2e50e299d1dde8d648f65f895612dd7a647c"

      def install
        bin.install "gpgkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.6.0/gpgkit-linux-amd64.tar.gz"
      sha256 "de26355bf1967c6c83602e7e69776459b856dd4b51c19fdfaba5b1180e7afb50"

      def install
        bin.install "gpgkit"
      end
    end
  end

  test do
    assert_match "gpgkit", shell_output("#{bin}/gpgkit --help")
  end
end
