cask "shorty" do
  version "0.1.0"
  sha256 "1bf2e7eeedcfa80193cfe357c1dcadef17236d406af0e90ff4cbf14f29215b13"

  url "https://github.com/johnoscott/shorty/releases/download/v#{version}/Shorty-#{version}.dmg"
  name "Shorty"
  desc "Manage menu keyboard shortcuts and app hotkeys from one file"
  homepage "https://github.com/johnoscott/shorty"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Shorty.app"
  binary "#{appdir}/Shorty.app/Contents/Resources/shorty"

  uninstall quit:       "com.roundrect.shorty.macos",
            login_item: "Shorty"

  zap trash: [
    "~/Library/Application Support/Shorty",
    "~/Library/Preferences/com.roundrect.shorty.macos.plist",
  ]

  caveats <<~EOS
    Shorty lives in the menu bar. Open it once to set up your shortcuts, or from a terminal:
      shorty import --write && shorty sync

    Removing Shorty does not remove the shortcuts it set in other apps. To do that first:
      shorty clear --yes
  EOS
end
