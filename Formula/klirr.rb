class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.1.23/klirr-aarch64-apple-darwin"
  sha256 "4ed966a028faeaceacb19030dcfd58610c571906e8ff76340f601f25b21de949"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.1.23/klirr-x86_64-unknown-linux-gnu"
      sha256 "97bcb8db55c15f229420e5dd115a6ac51b00aeb1f7587eb6b1bd22f7ad572dc7"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
