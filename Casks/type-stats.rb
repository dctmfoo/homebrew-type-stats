cask "type-stats" do
  version "0.1.4"
  sha256 "b1e069e0848d2995dfc5ae3a20a3952ce17f2dce090342e6eec1112f59921a02"

  url "https://github.com/dctmfoo/type-stats/releases/download/v#{version}/TypeStats-#{version}.zip"
  name "TypeStats"
  desc "Menu bar app that counts key presses and clicks per app"
  homepage "https://github.com/dctmfoo/type-stats"

  depends_on macos: :sonoma

  app "TypeStats.app"

  uninstall quit: "local.typestats.TypeStats"

  zap trash: "~/Library/Application Support/TypeStats"
end
