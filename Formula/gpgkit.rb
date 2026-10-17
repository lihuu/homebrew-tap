class Gpgkit < Formula
  desc "One command for the whole life of a GPG key"
  homepage "https://lihuu.github.io/li-tools/gpgkit"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.1.0/gpgkit-darwin-arm64"
      sha256 "5f54e68597470d9cddaa16ba58319a0423018dda60f0086a39fe38bc344c10af"

      def install
        bin.install "gpgkit-darwin-arm64" => "gpgkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.1.0/gpgkit-linux-amd64"
      sha256 "b685a185e3a4fe7af9c0357c66e14d126234e39a0a4a9979a0a11dd8813d6775"

      def install
        bin.install "gpgkit-linux-amd64" => "gpgkit"
      end
    end
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/gpgkit --version")
  end
end
