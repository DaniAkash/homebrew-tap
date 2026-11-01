cask "agent-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "7997ab33eaadf53703175df4baad215c9f1e86f6cda5fcf74b95d08bfad3fc4b",
         intel: "9609576ea055a90ac77f392aceabf72f226cfd9b18f81405f85ef068f947dc1b"

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
