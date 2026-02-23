class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.2.9/klirr-aarch64-apple-darwin"
  sha256 "53a772bbf4fc99467fbc948a65d307e4e9af7690cc9afef4eb07d10b3d9e3a1a"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.2.9/klirr-x86_64-unknown-linux-gnu"
      sha256 "a360b68c204f36392593cf1c5a5fd717449aaff222f95e0f1a120046afb6de57"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
