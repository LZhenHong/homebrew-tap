cask "findersnap" do
  version "1.0.8"
  sha256 "47a49875b8ebdae2bbd88208bb704ce3468e9a61dbf6fbec0ff52213a7bffd4c"

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
