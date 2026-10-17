cask "agent-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "7b5dcace96e4d5fc65ff3155bb6c3ac8afa1010c9df1c006990af5b33a52f498",
         intel: "3a010f0949ff4437f797d70b02eaa6781a7bcb1b32416474daa8f92b6c417566"

  url "https://github.com/DaniAkash/agent-terminal/releases/download/v#{version}/agent-terminal-#{arch}.dmg",
      verified: "github.com/DaniAkash/agent-terminal/"

  name "Agent Terminal"
  desc "Terminal for AI coding agents with per-tab session tracking"
  homepage "https://github.com/DaniAkash/agent-terminal"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: ">= :monterey"

  app "Agent Terminal.app"

  zap trash: [
    "~/Library/Application Support/com.daniakash.agent-terminal",
    "~/Library/Caches/com.daniakash.agent-terminal",
    "~/Library/Preferences/com.daniakash.agent-terminal.plist",
    "~/Library/Saved Application State/com.daniakash.agent-terminal.savedState",
    "~/Library/WebKit/com.daniakash.agent-terminal",
    "~/.config/agent-terminal",
    "~/.config/agent-terminal-dev",
  ]
end
