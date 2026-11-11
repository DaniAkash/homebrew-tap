cask "agent-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "71d5f9f2044b07265fddf645a52d1e75f753bb6bb50c6a65a2ccf039aaec7bc9",
         intel: "73ae7279fb48afa167f63a43d8ca93b4f6e3554548ace640b7ef6aa0bbcdca40"

  url "https://github.com/DaniAkash/agent-terminal/releases/download/v#{version}/agent-terminal-#{arch}.dmg"
  name "Agent Terminal"
  desc "Terminal for AI coding agents with per-tab session tracking"
  homepage "https://github.com/DaniAkash/agent-terminal"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Agent Terminal.app"

  zap trash: [
    "~/.config/agent-terminal",
    "~/.config/agent-terminal-dev",
    "~/Library/Application Support/com.daniakash.agent-terminal",
    "~/Library/Caches/com.daniakash.agent-terminal",
    "~/Library/Preferences/com.daniakash.agent-terminal.plist",
    "~/Library/Saved Application State/com.daniakash.agent-terminal.savedState",
    "~/Library/WebKit/com.daniakash.agent-terminal",
  ]
end
