cask "americano" do
  version "1.0.9"
  sha256 "8e3aec010e959c9af787782a36d2fa65fbc11c350955470bbd940309fdd55020"

  url "https://github.com/LZhenHong/Americano/releases/download/v#{version}/Americano.app.zip"
  name "Americano"
  desc "Prevent your Mac from sleeping"
  homepage "https://github.com/LZhenHong/Americano"

  depends_on macos: ">= :sonoma"

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
