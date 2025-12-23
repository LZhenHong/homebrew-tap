cask "findersnap" do
  version "1.0.2"
  sha256 "96f8b333c81b47a7b73604a2bacd0e6afd6e89f1726689626a1f7dc23c7abf83"

  url "https://github.com/LZhenHong/FinderSnap/releases/download/#{version}/FinderSnap-#{version}.zip"
  name "FinderSnap"
  desc "Automatically resize and position new Finder windows on macOS"
  homepage "https://github.com/LZhenHong/FinderSnap"

  depends_on macos: ">= :sonoma"

  app "FinderSnap.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/FinderSnap.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.lzhlovesjyq.FinderSnap.plist",
  ]
end
