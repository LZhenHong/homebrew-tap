cask "findersnap" do
  version "1.0.6"
  sha256 "1a6e47c2a779002fee7e2a999f5caaa72bc9fcd606f187a8dadfa9e9450650b2"

  url "https://github.com/LZhenHong/FinderSnap/releases/download/#{version}/FinderSnap-#{version}.zip"
  name "FinderSnap"
  desc "Automatically resize and position new Finder windows on macOS"
  homepage "https://github.com/LZhenHong/FinderSnap"

  depends_on macos: :sonoma

  app "FinderSnap.app"

  zap trash: [
    "~/Library/Preferences/com.lzhlovesjyq.FinderSnap.plist",
  ]
end
