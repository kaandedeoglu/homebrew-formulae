class Shark < Formula
  desc "Swift CLI for strong-typing images, fonts, colors, localizations, and more"
  homepage "https://github.com/kaandedeoglu/Shark"
  url "https://github.com/kaandedeoglu/Shark.git",
      tag:      "1.8.7",
      revision: "4f5e20238957abb919c825380a9bf17965d7228b"
  head "https://github.com/kaandedeoglu/Shark.git", branch: "master"

  depends_on xcode: ["11.0", :build]

  def install
    system "swift", "build", "--build-system", "native", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/Shark" => "shark"
  end

  test do
    system "#{bin}/shark", "--help"
  end
end
