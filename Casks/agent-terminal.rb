cask "agent-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "c8d4dfc39ab10c6a00e955110f0eace644594f35990f03ddd68bff50f2606d01",
         intel: "5501b802bfb2022b04da8ace0f8e685b83c7ac22c3a0a845825326368f0ef63e"

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
