cask "vibedrafts" do
  version "0.0.1-rc.6"
  sha256 "2ea5838c5049a9008f779e6e55e8a4a5051ecd6e81cf51981285498b2f7be97e"

  url "https://github.com/LZhenHong/homebrew-tap/releases/download/vibedrafts-v#{version}/VibeDrafts-v#{version}.zip"
  name "VibeDrafts"
  desc "Create, manage, and send text drafts to the focused macOS app"
  homepage "https://github.com/LZhenHong/VibeDrafts"

  depends_on macos: ">= :sequoia"

  app "VibeDrafts.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/VibeDrafts.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/VibeDrafts",
    "~/Library/Preferences/io.lzhlovesjyq.VibeDrafts.plist",
  ]
end
