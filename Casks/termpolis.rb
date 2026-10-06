cask "termpolis" do
  arch arm: "-arm64"

  version "1.50.0"
  sha256 arm:   "a8c5227d8bffd7fb0e04e70a215bc8e8c82062db051d7d5b8d945574740f2643",
         intel: "bc85c7cfda6ab6e4592bb2dc4bcbffc61b75b94802c1a44590c6d5aa23a6a7d9"

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
