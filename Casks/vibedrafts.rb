cask "vibedrafts" do
  version "0.0.1-rc.10"
  sha256 "dfbf8b4f07aa413ae9e503f4ad6c0811c3d2b1abf07b33cd326a87344d38ed15"

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
