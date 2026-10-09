cask "type-stats" do
  version "0.1.3"
  sha256 "0c0fbece101b91a7a3838cdc586bffc847df97efd8713477a2bdb9c72079cd8f"

  url "https://github.com/dctmfoo/type-stats/releases/download/v#{version}/TypeStats-#{version}.zip"
  name "TypeStats"
  desc "Menu bar app that counts key presses and clicks per app"
  homepage "https://github.com/dctmfoo/type-stats"

  depends_on macos: :sonoma

  app "TypeStats.app"

  uninstall quit: "local.typestats.TypeStats"

  zap trash: "~/Library/Application Support/TypeStats"
end
