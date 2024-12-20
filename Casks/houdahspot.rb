cask 'houdahspot' do
  version '4.4.2'
  sha256 '6f7847d1104800f55ae5512fd927c86172e3d8f960bd3135511467972e5afe12'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'

  zap trash: [
  #   "~/Library/Application Scripts/com.houdah.HoudahSpot#{version.major}.FinderExtension",
  #   "~/Library/Application Scripts/com.houdah.HoudahSpot#{version.major}.HoudahSpotQuickAction",
    "~/Library/Application Support/com.houdah.HoudahSpot#{version.major}",
    "~/Library/Caches/com.houdah.HoudahSpot#{version.major}",
  #   "~/Library/Containers/com.houdah.HoudahSpot#{version.major}.FinderExtension",
  #   "~/Library/Containers/com.houdah.HoudahSpot#{version.major}.HoudahSpotQuickAction",
    "~/Library/HTTPStorages/com.houdah.HoudahSpot#{version.major}",
  #   "~/Library/Mail/Bundles/HoudahSpotMailPlugin.mailbundle",
    "~/Library/Preferences/com.houdah.HoudahSpot#{version.major}.plist",
  ]
end
