class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.2.10/klirr-aarch64-apple-darwin"
  sha256 "ab62cddc059ffdec3a6694e095c966b55bdf7bb3eb1cb16f36a3c6283fc8b006"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.2.10/klirr-x86_64-unknown-linux-gnu"
      sha256 "bba12f9956f12cd8401f9fb0dae548f2d447620690633057e92baffdb2871cbd"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
