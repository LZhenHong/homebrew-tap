cask "findersnap" do
  version "1.0.0"
  sha256 "0720c34923adfccedc03bb06bb690a89a59d4cf6311974288fa2151e2990f144"

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
