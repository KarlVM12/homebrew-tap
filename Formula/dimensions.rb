class Dimensions < Formula
  desc "Terminal Tab Manager"
  homepage "https://github.com/KarlVM12/Dimensions"
  url "https://github.com/KarlVM12/Dimensions/archive/refs/tags/v0.2.20.tar.gz"
  sha256 "52747d61d830dc5b2b689b8e93265e9112bd586bd5ee4bdb4066c7e8a3ef7aa2"
  license "MIT"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "dimensions v#{version}", shell_output("#{bin}/dimensions --version")
  end
end
