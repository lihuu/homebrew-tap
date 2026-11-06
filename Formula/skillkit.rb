class Skillkit < Formula
  desc "Personal skills repository manager and parallel distribution CLI for AI agents"
  homepage "https://tools.lihu.me/skillkit"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.5.0/skillkit-darwin-arm64.tar.gz"
      sha256 "6208b9dfdbf0877d7b392f331fa71d9644aa472c6c7020a4b15d12754e91abbf"

      def install
        bin.install "skillkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.5.0/skillkit-linux-amd64.tar.gz"
      sha256 "8946ef50e81d6a9947aa9ba72f11ff6b7f9a6623ced3c66ac844953aab2e5549"

      def install
        bin.install "skillkit"
      end
    end
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/skillkit --version")
  end
end
