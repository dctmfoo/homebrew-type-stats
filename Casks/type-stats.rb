cask "type-stats" do
  version "0.1.7"
  sha256 "cd1074ab61406df335a20b9869705f09bc0cf4290333894f0fc36c16c5c6f499"

  url "https://github.com/dctmfoo/type-stats/releases/download/v#{version}/TypeStats-#{version}.zip"
  name "TypeStats"
  desc "Menu bar app that counts key presses and clicks per app"
  homepage "https://github.com/dctmfoo/type-stats"

  depends_on macos: :sonoma

  app "TypeStats.app"

  uninstall quit: "local.typestats.TypeStats"

  zap trash: "~/Library/Application Support/TypeStats"
end
