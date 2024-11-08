class Shark < Formula
  desc "Swift CLI for strong-typing images, colors and localizations"
  homepage "https://github.com/kaandedeoglu/Shark"
  url "https://github.com/kaandedeoglu/Shark.git"
  head "https://github.com/kaandedeoglu/Shark.git", :tag => "1.7"
  version "1.7"

  depends_on :xcode => ["11.0", :build]

  def install
    system "swift build -c release --disable-sandbox"
    bin.install Dir[".build/release/Shark"]
  end

  test do
    system "shark" "-- help"
  end
end
