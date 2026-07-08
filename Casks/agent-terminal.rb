cask "agent-terminal" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.5"
  sha256 arm:   "42952922776914848af4ea6f2414d81d838239e38df0108e8f92f7e4c003cf27",
         intel: "f19b1d048ea6b402ecc34a285a78b8be979fd51651ae89e67cebc45ccdf6da92"

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
