class Klirr < Formula
  desc "Generate invoice with auto invoice number setting & working days calc."
  homepage "https://github.com/Sajjon/klirr"
  version "0.1.21"

  on_macos do
    url "https://github.com/Sajjon/klirr/releases/download/v0.1.21/klirr-aarch64-apple-darwin"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  on_linux do
    url "https://github.com/Sajjon/klirr/releases/download/v0.1.21/klirr-x86_64-unknown-linux-gnu"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "klirr"
  end

  test do
    system "#{bin}/klirr", "--help"
  end
end
