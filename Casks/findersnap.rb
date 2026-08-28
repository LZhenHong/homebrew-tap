cask "findersnap" do
  version "1.0.5"
  sha256 "fd1dd06dab14d4f7a3a44243dc9c5693a5cfa44c26995f7ec06508eeea3a4f4e"

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
