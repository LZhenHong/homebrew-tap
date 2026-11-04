cask "findersnap" do
  version "1.0.7"
  sha256 "89357f9f5b3826f436880f2a4f3e0ef8bb96400dbbb2d969413fb846c171dbc3"

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
