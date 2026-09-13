cask "claudewatch" do
  # Version and sha256 are updated automatically by the release workflow.
  version "1.2.2"
  sha256 "46ecf30d4503b08a65b7717203d55c7c6d3aaef8bc41e810087b129343e2cd2c"

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
