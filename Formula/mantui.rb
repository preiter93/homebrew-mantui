class Mantui < Formula
  desc "mantui: A grpc client for the terminal"
  homepage "https://github.com/preiter93/mantui"
  version "0.1.0"
  license "MIT"
  head "https://github.com/preiter93/mantui.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "bccd6e4477ca95bbf4ba0b595e90140cad0f193ab3b7cb22dc15cc67e5687fec"
    else
      rl "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b052221c2995016c575eb27eccb57eefe8d8fbd02dff0c0488027f42877bc445"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eee7ab9a7372ce416a76520d7f36e349ced6aa296262dba6374ef519ecd2ceeb"
    else
      url "https://github.com/preiter93/mantui/releases/download/v0.1.0/mantui-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88c79eab5252c99404e39870b35842fca1596d8775e2909281c43dd857abf746"
    end
  end
  
  def install
    bin.install "mantui"
  end

  test do
    system "#{bin}/mantui", "--version"
  end
end
