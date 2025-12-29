class Mantui < Formula
  desc "mantui: A grpc client for the terminal"
  homepage "https://github.com/preiter93/mantui"
  version "0.1.1"
  license "MIT"
  head "https://github.com/preiter93/mantui.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/mantui/releases/download/v0.1.1/mantui-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "261427d8a29227765855dba85367d4ea84c872d46dcaa40ab3140a23182d7fa2"
    else
      rl "https://github.com/preiter93/mantui/releases/download/v0.1.1/mantui-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "65c63741f5a23c4451004a5bcf7367b2d9f5913a1b9059bc976e9ccb8669d659"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/mantui/releases/download/v0.1.1/mantui-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc64374161d2db93b1d0c067684268b9e47d6aaf1500467e49858164e1ddc449"
    else
      url "https://github.com/preiter93/mantui/releases/download/v0.1.1/mantui-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c3688f9df4ca644d52cb977a50699353578c9e608dc1016255c12413be28b44"
    end
  end
  
  def install
    bin.install "mantui"
  end

  test do
    system "#{bin}/mantui", "--version"
  end
end
