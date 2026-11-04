# NotchDev for Homebrew

[NotchDev](https://notchdev.diegomp.dev) turns your MacBook's notch into a dev HUD: Claude Code usage and sessions, dev servers, Git and CI, meetings and reminders.

## Install

```sh
brew install --cask diemunoz/notchdev/notchdev
```

NotchDev needs macOS 15 or later and updates itself from inside the app.

NotchDev isn't notarized by Apple yet. If macOS says it can't verify it, open **System Settings › Privacy & Security** and click **Open Anyway** (only once).

## Uninstall

Before uninstalling, use the **Remove** buttons in NotchDev's Settings to take out its Claude Code hooks, zsh line and CLAUDE.md section. Then:

```sh
brew uninstall --cask notchdev        # the app
brew uninstall --zap --cask notchdev  # the app, its settings and your license
```

Bugs and ideas: [diemunoz/notchdev](https://github.com/diemunoz/notchdev/issues).
