cask "RimSort" do
  version "v1.0.11"
  arch arm: "arm", intel: "i386"
  sha256 :no_check

  url "https://github.com/RimSort/RimSort/releases/download/#{version}/RimSort-#{version}-Darwin_#{arch}.zip"
  name "RimSort"
  desc ""
  homepage "https://github.com/RimSort/RimSort"

  auto_updates true

  app "RimSort.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         [
                     "-dr",
                     "com.apple.quarantine",
                     "#{appdir}/RimSort.app",
                   ]
  end

  zap trash: [
        "~/Library/Application Support/RimSort",
        "~/Library/Saved Application State/RimSort.savedState",
        "~/Library/Preferences/RimSort.plist"
      ]
end
