cask 'imcp' do
  version '1.4.0'
  sha256 :no_check

  url "https://github.com/mattt/iMCP/releases/download/#{version}/iMCP.zip"
  name 'iMCP'
  desc ''
  homepage 'https://github.com/mattt/iMCP'

  app 'iMCP.app'


  postflight do
    system_command "/usr/bin/xattr",
                   args:         [
                     "-dr",
                     "com.apple.quarantine",
                     "#{appdir}/iMCP.app",
                   ]
  end

  zap trash: [ ]
end
