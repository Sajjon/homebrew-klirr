class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.2.12/klirr-aarch64-apple-darwin"
  sha256 "0a834acfe282733dd89fb61aa3ee1cbc0bfd8e044b690e3c6eab7627f224c35c"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.2.12/klirr-x86_64-unknown-linux-gnu"
      sha256 "25098e41006e4def0a220d48607f7733bb09c4ced28629bc55cbde7450cf4d7a"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
