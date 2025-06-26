cask "yaagl-zzz" do
  version 
  sha256 :no_check

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.ZZZ.OS.app.tar.gz"
  name "Yaagl ZZZ"
  desc ""
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher"

  auto_updates false

  app "Yaagl ZZZ OS.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         [
                     "-dr",
                     "com.apple.quarantine",
                     "#{appdir}/Yaagl ZZZ OS.app",
                   ]
  end

  zap trash: [
        "~/Library/Application Support/Yaagl ZZZ OS",
        "~/Library/Caches/com.3shain.yaagl.nap.os",
        "~/Library/WebKit/com.3shain.yaagl.nap.os"
      ]
end
