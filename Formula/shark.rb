class Shark < Formula
  desc "Swift CLI for strong-typing images, colors and localizations"
  homepage "https://github.com/kaandedeoglu/SharkPM"
  url "https://github.com/kaandedeoglu/SharkPM.git",
      :tag => "1.0.0"
  head "https://github.com/kaandedeoglu/SharkPM.git"

  depends_on :xcode => ["10.0", :build]

  def install
    system "swift build -c release --disable-sandbox"
    bin.install Dir[".build/release/Shark"]
  end

  test do
    system "shark" "-- help"
  end
end
