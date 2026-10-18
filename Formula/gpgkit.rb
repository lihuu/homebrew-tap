class Gpgkit < Formula
  desc "One command for the whole life of a GPG key"
  homepage "https://lihuu.github.io/li-tools/gpgkit"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.2.0/gpgkit-darwin-arm64"
      sha256 "c37a25b0307002e4b19037250a404dd68c2cf702f1502fa12a712538e49edf9f"

      def install
        bin.install "gpgkit-darwin-arm64" => "gpgkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.2.0/gpgkit-linux-amd64"
      sha256 "0f5b3fea7455056ee519f2230061c681ade9eca487539caf497d3d40acc49ada"

      def install
        bin.install "gpgkit-linux-amd64" => "gpgkit"
      end
    end
  end

  test do
    assert_match "gpgkit", shell_output("#{bin}/gpgkit --help")
  end
end
