cask "yaagl" do
  version '0.2.24'
  sha256 :no_check

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.OS.app.tar.gz"
  name "Yaagl"
  desc ""
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher"

  auto_updates false

  app "Yaagl OS.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args:         [
                     "-dr",
                     "com.apple.quarantine",
                     "#{appdir}/Yaagl OS.app",
                   ]
  end

  zap trash: [
        "~/Library/Application Support/Yaagl OS",
        "~/Library/Caches/com.3shain.yaagl.os",
        "~/Library/WebKit/com.3shain.yaagl.os"
      ]
end
