cask "crabpad" do
  version "1.0.6"
  sha256 "138a6d1907d8aff8ba04315f4e917ace44d245fda08694470cdf5f1a4ae572e1"

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
