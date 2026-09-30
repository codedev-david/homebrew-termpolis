cask "termpolis" do
  arch arm: "-arm64"

  version "1.49.0"
  sha256 arm:   "5b4e83f77fa18742e622dbce447f2337f8a0080043bceefeae9dbc4a492dcf0b",
         intel: "07be92ef0efa30bed0dfdd4b38fb2fb5da9cfeabfc5d865016a458a5a15dc7c9"

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
