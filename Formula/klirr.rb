class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.2.14/klirr-aarch64-apple-darwin"
  sha256 "b512cebaf18b7092160c0d984b18825b25e53d93f880da9251b15330e17b7a3f"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.2.14/klirr-x86_64-unknown-linux-gnu"
      sha256 "89b9bb008bfe4e97a95b064409346c1ba70bb4f9297a05ce33c2260c67282196"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
