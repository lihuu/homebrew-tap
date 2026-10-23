class Skillkit < Formula
  desc "Personal skills repository manager and parallel distribution CLI for AI agents"
  homepage "https://tools.lihu.me/skillkit"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lihuu/li-tools/releases/download/v0.4.0/skillkit-darwin-arm64.tar.gz"
      sha256 "c56ba695f49fef6b8d66c692f497e91ea3911e7dd23daded28c57a4178c4b05b"

      def install
        bin.install "skillkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lihuu/li-tools/releases/download/v0.4.0/skillkit-linux-amd64.tar.gz"
      sha256 "b7e1deb84fde37713478db8b4448152a98e7da6a17c43a982fee626178b93997"

      def install
        bin.install "skillkit"
      end
    end
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/skillkit --version")
  end
end
