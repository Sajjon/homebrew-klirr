class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.1.27/klirr-aarch64-apple-darwin"
  sha256 "da5a248ba2e8e9cfd28e49f9fb90ecddcbdc73915729bc2bc33f4655e7ae5703"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.1.27/klirr-x86_64-unknown-linux-gnu"
      sha256 "59cbcd34b492a1726be3df2064604ee4cb28ff6c0b18ecc892d42b628f930f1e"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
