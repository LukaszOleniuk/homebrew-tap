cask "crabpad" do
  version "1.0.5"
  sha256 "8c324e1ee6639a66a3e670c99e660431e835060dac275a2718719cccc64a20c1"

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
