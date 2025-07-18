class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.2.1/klirr-aarch64-apple-darwin"
  sha256 "85ae97e72c2e4a87a5910fa3a98b91660fab30249699578978d1cc0f87890450"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.2.1/klirr-x86_64-unknown-linux-gnu"
      sha256 "a9f02314b74353f20e01620060b62b01a832617e7fe85b668059f97c48ca75cb"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
