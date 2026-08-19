cask "americano" do
  version "1.1.0"
  sha256 "c759be9d4ad3a85398fc899f46325a8690b60f62eb5570ba5894674bffd89a33"

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
