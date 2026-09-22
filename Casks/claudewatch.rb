cask "claudewatch" do
  # Version and sha256 are updated automatically by the release workflow.
  version "1.5.3"
  sha256 "27d2b0d213c69ce7ab13ef081a4bafc913c0b22e1378b72a096ea1f476f22e9e"

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
