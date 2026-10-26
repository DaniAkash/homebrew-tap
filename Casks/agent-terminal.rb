cask "agent-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "7578d77bd5f5de5f5b8d0d12b44ceba1ab5ba933b8f534ad814b45b5fae4e3fb",
         intel: "d7610c367a4243e92f6b8f7f271103ecb6315fd74406fe9158813129caaee3d8"

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
