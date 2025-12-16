cask "findersnap" do
  version "1.0.1"
  sha256 "127b6fa242789f0f0ab8e91cd5b7e151f55cb9df477a0357903ed71f1c55f2a6"

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
