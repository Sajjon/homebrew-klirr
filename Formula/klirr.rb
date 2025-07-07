class Klirr < Formula
	desc "Generate invoice with auto invoice number setting & working days calc"
	homepage "https://github.com/Sajjon/klirr"
	version "0.1.22"

	on_macos do
		url "https://github.com/Sajjon/klirr/releases/download/v0.1.22/klirr-aarch64-apple-darwin"
		sha256 "2e2a81c0cc7bc5dc6a48cde06948521695155744482f9bc70dfe30021e953157"
	end

	on_linux do
		url "https://github.com/Sajjon/klirr/releases/download/v0.1.22/klirr-x86_64-unknown-linux-gnu"
		sha256 "ab8677c06c34f107099042f59b454c8ba49c4b2356ba165c410b9a32b9057776"
	end

	def install
		on_macos do
			bin.install "klirr-aarch64-apple-darwin" => "klirr"
		end
		on_linux do
			bin.install "klirr-x86_64-unknown-linux-gnu" => "klirr"
		end
	end

	test do
		system "#{bin}/klirr", "--help"
	end
end
