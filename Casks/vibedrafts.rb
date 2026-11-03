cask "vibedrafts" do
  version "0.0.1-rc.13"
  sha256 "da53a30a7efb9684875c636f6ef259ac29dc09b6ff75fdd4879484494c7d7b47"

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
