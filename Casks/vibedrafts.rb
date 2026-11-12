cask "vibedrafts" do
  version "0.0.1-rc.15"
  sha256 "25ffb0a11546faf7a8ff095516ff895f6a7b7d4ebcaf180828f7d6b5f28d961d"

  url "https://github.com/LZhenHong/homebrew-tap/releases/download/vibedrafts-v#{version}/VibeDrafts-v#{version}.zip"
  name "VibeDrafts"
  desc "Create, manage, and send text drafts to the focused macOS app"
  homepage "https://github.com/LZhenHong/VibeDrafts"

  depends_on macos: :sequoia

  app "VibeDrafts.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/VibeDrafts.app"]
  end

  zap trash: [
    "~/Library/Application Support/VibeDrafts",
    "~/Library/Preferences/io.lzhlovesjyq.VibeDrafts.plist",
  ]
end
