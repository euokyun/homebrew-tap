cask 'imcp' do
  version '1.3.0'
  sha256 :no_check

  url "https://github.com/loopwork-ai/iMCP/releases/download/#{version}/iMCP.zip"
  name 'iMCP'
  desc ''
  homepage 'https://github.com/loopwork-ai/iMCP'

  app 'iMCP.app'


  postflight do
    system_command "/usr/bin/xattr",
                   args:         [
                     "-dr",
                     "com.apple.quarantine",
                     "#{appdir}/iMCP.app",
                   ]
  end

  zap trash: [
        # "~/Library/Application Support/Yaagl OS",
        # "~/Library/Caches/com.3shain.yaagl.os",
        # "~/Library/WebKit/com.3shain.yaagl.os"
      ]
end
