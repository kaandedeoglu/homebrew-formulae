class Shark < Formula
  desc "Swift CLI for strong-typing images, fonts, colors, localizations, and more"
  homepage "https://github.com/kaandedeoglu/Shark"
  url "https://github.com/kaandedeoglu/Shark.git",
      tag:      "2.0",
      revision: "1dd192fc8131f9e0fe2a111cfedf10a9ddede437"
  head "https://github.com/kaandedeoglu/Shark.git", branch: "master"

  depends_on xcode: ["15.3", :build]

  def install
    system "swift", "build", "--build-system", "native", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/Shark" => "shark"
  end

  test do
    system bin/"shark", "--help"
  end
end
