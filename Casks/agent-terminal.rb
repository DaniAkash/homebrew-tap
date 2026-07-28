cask "agent-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "b8db8639751e1308a757aa4e90494cdd0e213cea447bcafe8169fa80487229bf",
         intel: "5d70dabec9c42dd2fad60ccb82215609518a53f194a683bbf0dac1083ed0ed3f"

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
