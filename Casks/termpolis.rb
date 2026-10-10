cask "termpolis" do
  arch arm: "-arm64"

  version "1.51.2"
  sha256 arm:   "44085e14d771e8d725e0adc61d5cd4aaaab38928b2774a86cd4e496a5e0963a3",
         intel: "115373f133995977512726b2fdba411754ce0fa8d8fc9dbdc376e8eb934410de"

  url "https://github.com/codedev-david/termpolis/releases/download/v#{version}/Termpolis-#{version}#{arch}.dmg"
  name "Termpolis"
  desc "Desktop terminal for Claude Code, Codex and Gemini CLI with shared memory"
  homepage "https://termpolis.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

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
