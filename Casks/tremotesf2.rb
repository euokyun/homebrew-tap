cask "tremotesf2" do
  version "2.7.4"
  sha256 :no_check

  url "https://github.com/equeim/tremotesf2/releases/download/#{version}/tremotesf-#{version}-macOS-arm64-Release.dmg"
  name "tremotesf2"
  desc "Transmission remote client"
  homepage "https://github.com/equeim/tremotesf2"

  auto_updates false

  app "Tremotesf.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         [
                     "-dr",
                     "com.apple.quarantine",
                     "#{appdir}/Tremotesf.app",
                   ]
  end

  zap trash: []
end
