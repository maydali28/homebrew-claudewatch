cask "claudewatch" do
  # Version and sha256 are updated automatically by the release workflow.
  version "1.4.0"
  sha256 "5bed29c55a26cbee69643134a6e74014aa7aff2e5ca4f4a17578b9c7bfcbf9d3"

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
