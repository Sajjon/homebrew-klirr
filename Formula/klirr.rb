class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.2.6/klirr-aarch64-apple-darwin"
  sha256 "b473fee393df4a9fcd7b608e568a300df747683aad38f6e4a43e63716579a0cb"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.2.6/klirr-x86_64-unknown-linux-gnu"
      sha256 "61d9484942217384384d48564cf9ef49cd9507febd354928314f5120a28aaff4"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
