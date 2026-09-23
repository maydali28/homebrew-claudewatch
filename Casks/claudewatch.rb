cask "claudewatch" do
  # Version and sha256 are updated automatically by the release workflow.
  version "1.5.5"
  sha256 "c3eeed77a894064d467c6c6907ae652546d142d10da27c867ee8be5da6a5da19"

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
