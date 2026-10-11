cask "type-stats" do
  version "0.1.5"
  sha256 "8440e3826df375772be0b6fabf12b8647dee989188f0fa8255b4a8ca86229c55"

  url "https://github.com/dctmfoo/type-stats/releases/download/v#{version}/TypeStats-#{version}.zip"
  name "TypeStats"
  desc "Menu bar app that counts key presses and clicks per app"
  homepage "https://github.com/dctmfoo/type-stats"

  depends_on macos: :sonoma

  app "TypeStats.app"

  uninstall quit: "local.typestats.TypeStats"

  zap trash: "~/Library/Application Support/TypeStats"
end
