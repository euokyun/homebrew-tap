cask "yaagl-hsr" do
  version '0.3.2'
  sha256 :no_check

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.HSR.OS.app.tar.gz"
  name "Yaagl HSR"
  desc ""
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher"

  auto_updates false

  app "Yaagl HSR OS.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         [
                     "-dr",
                     "com.apple.quarantine",
                     "#{appdir}/Yaagl HSR OS.app",
                   ]
  end

  zap trash: [
        "~/Library/Application Support/Yaagl HSR OS",
        "~/Library/Caches/com.3shain.yaagl.hkrpg.os",
        "~/Library/WebKit/com.3shain.yaagl.hkrpg.os"
      ]
end
