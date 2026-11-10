cask "virtual-location" do
  version "1.0.0,2611101002"
  sha256 "674afd240613f49f1720eaf1f6383a63ade484626317c24ed56e52272f7da7df"

  url "https://github.com/LZhenHong/homebrew-tap/releases/download/virtual-location-v#{version.csv.first}-#{version.csv.second}/VirtualLocation-#{version.csv.first}-#{version.csv.second}.dmg"
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
