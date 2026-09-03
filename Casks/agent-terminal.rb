cask "agent-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "93bd249d22e4c5ecd8d967eb24eb3d2c6dd117778be32822575747f87363b9a3",
         intel: "3f26f66d0be7ef98dfccf2c9b74af4111edeace88da5f52a3c9074b21b888ab7"

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
