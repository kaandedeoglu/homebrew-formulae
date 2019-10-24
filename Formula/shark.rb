class Shark < Formula
  desc "Swift CLI for strong-typing images, colors and localizations"
  homepage "https://github.com/kaandedeoglu/Shark"
  url "https://github.com/kaandedeoglu/Shark.git",
      :tag => "1.1.2"
  head "https://github.com/kaandedeoglu/Shark.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "swift build -c release --disable-sandbox"
    bin.install Dir[".build/release/Shark"]
  end

  test do
    system "shark" "-- help"
  end
end
