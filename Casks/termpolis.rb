cask "termpolis" do
  arch arm: "-arm64", intel: ""

  version "1.11.55"
  sha256 arm:   "102aab28253366b073c342e906494e3df81912337261c49867facaaf642e89cc",
         intel: "379b2ac1bcd4a8486cf9b5ecb00075aecb97cdcccf1566f1f8cedfd842f16043"

  url "https://github.com/codedev-david/termpolis/releases/download/v#{version}/Termpolis-#{version}#{arch}.dmg",
      verified: "github.com/codedev-david/termpolis/"
  name "Termpolis"
  desc "Desktop terminal for Claude Code, Codex and Gemini CLI with shared memory"
  homepage "https://termpolis.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Termpolis.app"

  zap trash: [
    "~/Library/Application Support/termpolis",
    "~/Library/Caches/com.termpolis.app",
    "~/Library/Caches/com.termpolis.app.ShipIt",
    "~/Library/Caches/termpolis-updater",
    "~/Library/HTTPStorages/com.termpolis.app",
    "~/Library/Logs/termpolis",
    "~/Library/Preferences/com.termpolis.app.plist",
    "~/Library/Saved Application State/com.termpolis.app.savedState",
  ]
end
