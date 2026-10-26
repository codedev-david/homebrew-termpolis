cask "termpolis" do
  arch arm: "-arm64"

  version "1.54.2"
  sha256 arm:   "080be07df10aee3722f43b12e9dddba7c3f7dc11d1e7499fbe32e9f4ac7af4c6",
         intel: "bbf95996c25074864e07780c57ed5459602d0b729710f6c02f505fc88952683e"

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
