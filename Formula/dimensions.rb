class Dimensions < Formula
  desc "Terminal Tab Manager"
  homepage "https://github.com/KarlVM12/Dimensions"
  url "https://github.com/KarlVM12/Dimensions/archive/refs/tags/v0.2.21.tar.gz"
  sha256 "e3c657c31606465fe2bc47966161c50ea18b16ba0be8efff40698e349fbbc483"
  version "0.2.21"
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
