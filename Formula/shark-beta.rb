class SharkBeta < Formula
  desc "Swift CLI for strong-typing images, colors and localizations [BETA]"
  homepage "https://github.com/kaandedeoglu/Shark"
  url "https://github.com/kaandedeoglu/Shark.git"
  conflicts_with "shark", :because => "both install `shark`, choose one."
  head "https://github.com/kaandedeoglu/Shark.git", :branch => "master"
  version "HEAD"

  depends_on :xcode => ["11.0", :build]

  def install
    system "swift build -c release --disable-sandbox"
    bin.install Dir[".build/release/Shark"]
  end

  test do
    system "shark" "-- help"
  end
end
