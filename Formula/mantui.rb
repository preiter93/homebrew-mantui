class Mantui < Formula
  desc "mantui: A grpc client for the terminal"
  homepage "https://github.com/preiter93/mantui"
  version "0.1.0"
  license "MIT"
  head "https://github.com/preiter93/mantui.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "fccf386c053c2c5760f7755bc198268db6f33b5f1b3691b785acd1cbd86e874e"
    else
      rl "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e366f521c2a1a7e67cd6c33dc7bb9ea5c09a76d16bc1b2b5c6e38244153566bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc87a3de680e19071abf46e52f4302bb076623afd42d1ca53dc53e39b1bfa786"
    else
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a93e8b517c2ff0d6c8f25fc8864df4eb628317450b70cf8a2147bfc11349e1bd"
    end
  end
  
  def install
    bin.install "mantui"
  end

  test do
    system "#{bin}/mantui", "--version"
  end
end
