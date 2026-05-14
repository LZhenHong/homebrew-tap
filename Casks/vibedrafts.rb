cask "vibedrafts" do
  version "0.0.1-rc.5"
  sha256 "b4ce33f16485446a423ed65a1666fa47ee982b351ef96efecc277a5ca3856da1"

  url "https://github.com/LZhenHong/VibeDrafts/releases/download/v#{version}/VibeDrafts-v#{version}.zip"
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
