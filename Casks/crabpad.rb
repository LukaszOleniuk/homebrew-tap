cask "crabpad" do
  version "1.0.6"
  sha256 "21cc9dcf9ba16df0c2cde59e01499060dad9641292c1c3d24f9bf18961e958a1"

  url "https://crabpad.app/download/v#{version}/CrabPad_#{version_universal.dmg}"
  name "CrabPad"
  desc "Fast, premium Markdown editor — local-first, keyboard-driven, distraction-free"
  homepage "https://crabpad.app"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "CrabPad.app"

  zap trash: [
    "~/Library/Application Support/app.crabpad",
    "~/Library/Caches/app.crabpad",
    "~/Library/WebKit/app.crabpad",
  ]
end
