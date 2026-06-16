cask "vibedrafts" do
  version "0.0.1-rc.9"
  sha256 "9baea53b790431f8c9e0cf962c1ce5f2b7fa2638ac65bdd22e3435b33be0ea64"

  url "https://github.com/LZhenHong/homebrew-tap/releases/download/vibedrafts-v#{version}/VibeDrafts-v#{version}.zip"
  name "VibeDrafts"
  desc "Create, manage, and send text drafts to the focused macOS app"
  homepage "https://github.com/LZhenHong/VibeDrafts"

  depends_on macos: :sequoia

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
