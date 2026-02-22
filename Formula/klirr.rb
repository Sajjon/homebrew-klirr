class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc"
  homepage "https://github.com/Sajjon/klirr"
  url "https://github.com/Sajjon/klirr/releases/download/v0.2.8/klirr-aarch64-apple-darwin"
  sha256 "be88c344365e03da58118e1820b8e6f643f857a97e84b13906919453eb02ba62"

  def install
    if OS.mac?
      bin.install "klirr-aarch64-apple-darwin" => "klirr"
    elsif OS.linux?
      url "https://github.com/Sajjon/klirr/releases/download/v0.2.8/klirr-x86_64-unknown-linux-gnu"
      sha256 "1b4bfc44d0c395d4f963b21fa971eaf66e939eadd50ba6cf001e813b7dfb7fc9"
      bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
    end
  end

  test do
    system bin/"klirr", "--help"
  end
end
