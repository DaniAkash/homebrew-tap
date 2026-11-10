cask "agent-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "c3db48b94a00ff5ff676e9d5dc72a4737a130d1792d22b594b443d7903c14533",
         intel: "8757f36569368efa65a7c44daeb334a1398f1e08556d789cda563cf61269222e"

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
