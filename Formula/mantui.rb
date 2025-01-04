class Mantui < Formula
  desc "mantui: A grpc client for the terminal"
  homepage "https://github.com/preiter93/mantui"
  version "0.1.0"
  license "MIT"
  head "https://github.com/preiter93/mantui.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d8a8f7febb209c72e7d79f54f991862acdc06e7b47c23f48f87da40626762c16"
    else
      rl "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "565f50f7f07e4483b7b9ab3aa6f36bd96ac2d4c4e5954074579fe7ab15eaa0c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2626b8265d48a6f9721351d757d45280f5d1283f895b055970ef6cd4a6dbd77f"
    else
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "942134d9130cff58b3d768a14c9a1573f9024ac78c82485d9ad8e5152f7c5c97"
    end
  end
  
  def install
    bin.install "mantui"
  end

  test do
    system "#{bin}/mantui", "--version"
  end
end
