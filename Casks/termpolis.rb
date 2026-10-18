cask "termpolis" do
  arch arm: "-arm64"

  version "1.53.1"
  sha256 arm:   "b86e41346d32d6afe8e737289bc510eae8c0a689a76f387c77b32f94e6b78ca0",
         intel: "d717428f2ffb5e0740a75d0f5fda214f350873776edf612ae33ef61490623c0d"

  url "https://github.com/codedev-david/termpolis/releases/download/v#{version}/Termpolis-#{version}#{arch}.dmg"
  name "Termpolis"
  desc "Desktop terminal for Claude Code, Codex and Gemini CLI with shared memory"
  homepage "https://termpolis.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

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
