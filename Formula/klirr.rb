class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.1.26/klirr-aarch64-apple-darwin"
  sha256 "fa51cd65f64e87a36b4c45608011a076aa8c6109696fe051ff51a7524629107a"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.1.26/klirr-x86_64-unknown-linux-gnu"
      sha256 "8c3f54362349e17b79664c76c8d72e5fe9f610c1fc2b9ef9e7010af9510a294e"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
