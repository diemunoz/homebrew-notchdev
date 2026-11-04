cask "notchdev" do
  version :latest
  sha256 :no_check

  url "https://api.notchdev.diegomp.dev/api/dl",
      verified: "api.notchdev.diegomp.dev/"
  name "NotchDev"
  desc "Dev HUD for the MacBook notch: Claude Code, dev servers, Git and CI"
  homepage "https://notchdev.diegomp.dev/"

  depends_on macos: :sequoia

  app "NotchDev.app"

  uninstall quit: "cl.diegomunozparra.notchdev"

  zap trash: [
    "~/Library/Application Support/NotchDev",
    "~/Library/Caches/cl.diegomunozparra.notchdev",
    "~/Library/HTTPStorages/cl.diegomunozparra.notchdev",
    "~/Library/Preferences/cl.diegomunozparra.notchdev.plist",
  ]

  caveats <<~EOS
    NotchDev isn't notarized by Apple yet. If macOS says it can't verify it,
    open System Settings > Privacy & Security and click "Open Anyway" (once).

    NotchDev updates itself. Before uninstalling, use the Remove buttons in its
    Settings to take out its Claude Code hooks, zsh line and CLAUDE.md section.
  EOS
end
