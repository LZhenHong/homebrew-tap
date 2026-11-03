cask "vibedrafts" do
  version "0.0.1-rc.14"
  sha256 "6ae5e2f2c756cde2ad0f1846518a83326fe50db7bd8e7663903bdc02154a8889"

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
