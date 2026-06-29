cask "claudewatch" do
  # Version and sha256 are updated automatically by the release workflow.
  version "1.1.4"
  sha256 "83049e55e8519da5a5cf11138a3eaceaa835b55be7374ab41fc5b9f0fa10436b"

  url "https://github.com/maydali28/claudewatch/releases/download/v#{version}/ClaudeWatch-#{version}-arm64.dmg"
  name "ClaudeWatch"
  desc "macOS menu bar for Claude watch"
  homepage "https://github.com/maydali28/claudewatch"
  auto_updates true

  depends_on macos: :sonoma

  app "ClaudeWatch.app"

  zap trash: [
    "~/Library/Application Support/claudewatch",
    "~/Library/Caches/com.maydali.claudewatch",
    "~/Library/Logs/claudewatch",
    "~/Library/Preferences/com.maydali.claudewatch.plist",
    "~/Library/Saved Application State/com.maydali.claudewatch.savedState",
  ]
end
