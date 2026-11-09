cask "virtual-location" do
  version "0.1.1,6"
  sha256 "cea14c5fdaab9a28a00152ab0baf2aac0bd482a1262274460d582cb7e3699daa"

  url "https://github.com/LZhenHong/LZhenHong.github.io/releases/download/virtual-location-updates/VirtualLocation-#{version.csv.first}-#{version.csv.second}.dmg"
  name "VirtualLocation"
  desc "Set virtual locations on connected iPhones and iPads"
  homepage "https://edenapps.site/products/virtual-location/"

  livecheck do
    url "https://edenapps.site/apps/virtual-location/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "VirtualLocation.app"

  caveats <<~EOS
    Restore the real location on all devices and quit VirtualLocation before installing, upgrading, or uninstalling. Before uninstalling, also disable the "This Mac" component in Settings.
  EOS
end
