# Homebrew Tap

Personal Homebrew tap for tools by Dani Akash.

## Install

```sh
brew tap daniakash/tap
brew install --cask agent-terminal
```

## Available Casks

### agent-terminal

Terminal for AI coding agents with per-tab session tracking.

Source: https://github.com/DaniAkash/agent-terminal

```sh
brew install --cask daniakash/tap/agent-terminal
```

Signed and notarized for macOS 12 (Monterey) and up. Ships for both Apple Silicon and Intel.

## Update

```sh
brew update
brew upgrade --cask agent-terminal
```

The apps in this tap also self-update via their built-in update mechanisms. Homebrew and the in-app updater coexist safely; whichever runs first wins the version bump.

## Uninstall

```sh
brew uninstall --cask agent-terminal            # removes /Applications/Agent Terminal.app
brew uninstall --cask agent-terminal --zap      # also removes config, cache, preferences
```

## How this tap stays fresh

Each cask has an auto-bump workflow. When a new stable release is published on the source repo, a `repository_dispatch` fires here and the cask is patched with the new version + SHA256 hashes. No manual updates.

## Contact

If a cask breaks, file an issue on the source repo (not this one). This tap only distributes; it does not build.
