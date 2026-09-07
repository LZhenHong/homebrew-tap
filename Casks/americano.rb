cask "americano" do
  version "1.1.1"
  sha256 "605315ee187e3ead814596485138d2c02c54f8f9dc806158cdab8bd85985a642"

  url "https://github.com/LZhenHong/Americano/releases/download/v#{version}/Americano.app.zip"
  name "Americano"
  desc "Prevent your Mac from sleeping"
  homepage "https://github.com/LZhenHong/Americano"

  auto_updates true
  depends_on macos: :sonoma

  app "Americano.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Americano.app"]
  end

  zap trash: [
    "~/Library/Preferences/io.lzhlovesjyq.Americano.plist",
  ]
end
