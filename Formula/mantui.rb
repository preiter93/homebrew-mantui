class Mantui < Formula
  desc "mantui: A grpc client for the terminal"
  homepage "https://github.com/preiter93/mantui"
  version "0.1.0"
  license "MIT"
  head "https://github.com/preiter93/mantui.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "3b21fbd391480b7b889bc0a9d71ab0966b5177792f6d45e6276047f0c5d565a6"
    else
      rl "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "2498bf1fa6c6efba117fd11cbc16777411c4a2f1358531ec51e23ecbc97aafa5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff2b8603de713d2dde2a80e922db86e775821c9447986b58f75687e02c33e16b"
    else
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e668091b312a08fdf1aa6bcbbd9694118adc5a5da04d532624cfd467d42b333"
    end
  end
  
  def install
    bin.install "mantui"
  end

  test do
    system "#{bin}/mantui", "--version"
  end
end
