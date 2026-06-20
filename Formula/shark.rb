class Shark < Formula
  desc "Swift CLI for strong-typing images, fonts, colors, localizations, and more"
  homepage "https://github.com/kaandedeoglu/Shark"
  url "https://github.com/kaandedeoglu/Shark.git",
      tag:      "1.8.6",
      revision: "dce6effd9929c4a0c2772c62c90b0d5d8921b90c"
  head "https://github.com/kaandedeoglu/Shark.git", branch: "master"

  depends_on xcode: ["11.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/Shark" => "shark"
  end

  test do
    system "#{bin}/shark", "--help"
  end
end
