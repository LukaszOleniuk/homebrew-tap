cask "crabpad" do
  version "1.0.7"
  sha256 "dda71d99c0668fb3f7f9d95adfe15147e311488bfbf156b1e0ccce88dad62353"

  url "https://crabpad.app/download/v#{version}/CrabPad_#{version}_universal.dmg"
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
