class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc."
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/archive/refs/tags/v0.1.14.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/klirr", "--help"
  end
end