class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.2.13/klirr-aarch64-apple-darwin"
  sha256 "a752ae2947ade6bc02459dd3a3d10929a4371f0445e791dcddf1820bc4e3cec6"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.2.13/klirr-x86_64-unknown-linux-gnu"
      sha256 "dc7667087032c79eb9116a74a01586bf634b69664d2e35925d410e6be1465db4"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
