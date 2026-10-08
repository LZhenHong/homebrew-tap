cask "vibedrafts" do
  version "0.0.1-rc.12"
  sha256 "bb3188bf3c0ee2d713afe88300e35a3ff78d49a0399a05cbbdd2295476e4e9c3"

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
