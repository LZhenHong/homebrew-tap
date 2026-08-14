cask "americano" do
  version "1.0.10"
  sha256 "17c9cb5d968ce5d229ed9d9e3a799272558120ff55bfb47b0b1ade5d0a2210c0"

  url "https://github.com/LZhenHong/Americano/releases/download/v#{version}/Americano.app.zip"
  name "Americano"
  desc "Prevent your Mac from sleeping"
  homepage "https://github.com/LZhenHong/Americano"

  depends_on macos: :sonoma

  app "Americano.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Americano.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/io.lzhlovesjyq.Americano.plist",
  ]
end
