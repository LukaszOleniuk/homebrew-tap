cask "crabpad" do
  version "1.0.8"
  sha256 "55b4d9821a99b01d15e6a06ceebd3cb43092df90914d607efc1eb4373c62a8c2"

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
