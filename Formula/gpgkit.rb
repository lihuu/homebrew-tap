class Gpgkit < Formula
  desc "One command for the whole life of a GPG key"
  homepage "https://lihuu.github.io/li-tools/gpgkit"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.4.0/gpgkit-darwin-arm64.tar.gz"
      sha256 "b56110cfa559f50fcbbf0d0b3e9ad21de1a30a5a13fe4a59321eabcef5e74076"

      def install
        bin.install "gpgkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.4.0/gpgkit-linux-amd64.tar.gz"
      sha256 "705f3d878d9725df85cfcb8058db8d96d9c432e1d023aaf326f031234d667813"

      def install
        bin.install "gpgkit"
      end
    end
  end

  test do
    assert_match "gpgkit", shell_output("#{bin}/gpgkit --help")
  end
end
