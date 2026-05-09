cask "termpolis" do
  version "1.11.55"

  on_arm do
    sha256 "102aab28253366b073c342e906494e3df81912337261c49867facaaf642e89cc"
    url "https://github.com/codedev-david/termpolis/releases/download/v#{version}/Termpolis-#{version}-arm64.dmg",
        verified: "github.com/codedev-david/termpolis/"
  end

  on_intel do
    sha256 "379b2ac1bcd4a8486cf9b5ecb00075aecb97cdcccf1566f1f8cedfd842f16043"
    url "https://github.com/codedev-david/termpolis/releases/download/v#{version}/Termpolis-#{version}.dmg",
        verified: "github.com/codedev-david/termpolis/"
  end

  name "Termpolis"
  desc "Secure AI-Assisted Development terminal — Claude, Codex, Gemini, and Qwen as a team"
  homepage "https://termpolis.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :big_sur"

  app "Termpolis.app"

  zap trash: [
    "~/Library/Application Support/termpolis",
    "~/Library/Caches/com.termpolis.app",
    "~/Library/Logs/termpolis",
    "~/Library/Preferences/com.termpolis.app.plist",
    "~/Library/Saved Application State/com.termpolis.app.savedState",
  ]
end
