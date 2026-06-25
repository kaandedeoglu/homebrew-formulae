class SharkAT1 < Formula
  desc "Swift CLI for strong-typing images, fonts, colors, localizations, and more"
  homepage "https://github.com/kaandedeoglu/Shark"
  url "https://github.com/kaandedeoglu/Shark.git",
      tag:      "1.8.7",
      revision: "4f5e20238957abb919c825380a9bf17965d7228b"

  depends_on xcode: ["15.3", :build]

  def install
    system "swift", "build", "--build-system", "native", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/Shark" => "shark1"
    bin.install_symlink "shark1" => "shark-1"
  end

  test do
    system "#{bin}/shark1", "--help"
    system "#{bin}/shark-1", "--help"
  end
end
