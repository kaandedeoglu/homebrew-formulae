class Shark < Formula
  desc "Swift CLI for strong-typing images, fonts, colors, localizations, and more."
  homepage "https://github.com/kaandedeoglu/Shark"
  url "https://github.com/kaandedeoglu/Shark.git"
  head "https://github.com/kaandedeoglu/Shark.git", :tag => "1.8"
  version "1.8"

  depends_on :xcode => ["11.0", :build]

  def install
    system "swift build -c release --disable-sandbox"
    bin.install Dir[".build/release/Shark"]
  end

  test do
    system "shark" "-- help"
  end
end
