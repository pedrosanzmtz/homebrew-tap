cask "kubeloupe" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/pedrosanzmtz/kubeloupe/releases/download/v#{version}/kubeloupe_#{version}_universal.dmg"
  name "kubeloupe"
  desc "Kubernetes IDE"
  homepage "https://github.com/pedrosanzmtz/kubeloupe"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The in-app updater keeps the app up to date; `brew upgrade` leaves it alone.
  auto_updates true
  depends_on :macos

  app "kubeloupe.app"

  zap trash: [
    "~/Library/Application Support/com.kubeloupe.app",
    "~/Library/Caches/com.kubeloupe.app",
    "~/Library/HTTPStorages/com.kubeloupe.app",
    "~/Library/Logs/com.kubeloupe.app",
    "~/Library/Preferences/com.kubeloupe.app.plist",
    "~/Library/Saved Application State/com.kubeloupe.app.savedState",
    "~/Library/WebKit/com.kubeloupe.app",
  ]
end
