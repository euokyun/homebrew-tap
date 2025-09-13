cask "satisfactorymodmanager" do
  version 'v1.0.43'
  sha256 :no_check

  url "https://github.com/satisfactorymodding/SatisfactoryModManager/releases/download/#{version}/SatisfactoryModManager_darwin_universal.zip"
  name "satisfactorymodmanager"
  desc ""
  homepage "https://github.com/satisfactorymodding/SatisfactoryModManager"

  auto_updates false

  app "SatisfactoryModManager.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         [
                     "-dr",
                     "com.apple.quarantine",
                     "#{appdir}/SatisfactoryModManager.app",
                   ]
  end

  zap trash: [
        "~/Library/Application Support/SatisfactoryModManager",
        "~/Library/Preferences/com.wails.SatisfactoryModManager.plist"
      ]
end
