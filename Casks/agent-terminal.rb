cask "agent-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "70440f2a28112124037f8622e58cb5e3224ac2b57d5b9198d9101f882ff60fb6",
         intel: "3e36c8ce5d9b250744cc4f5729f5c270aefb55425993c1e6e8785b100b72131f"

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
