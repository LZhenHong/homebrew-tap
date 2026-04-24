cask "findersnap" do
  version "1.0.4"
  sha256 "b789d62eaa23c442a3f90cee94b191519c823bf2d525bb5e256285f5aed38106"

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
