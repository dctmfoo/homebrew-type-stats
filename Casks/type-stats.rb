cask "type-stats" do
  version "0.1.1"
  sha256 "7f61eb936e5197ec2850c425b3a212e5abf1dfcc39fb301192dd511d89f370dd"

  url "https://github.com/dctmfoo/type-stats/releases/download/v#{version}/TypeStats-#{version}.zip"
  name "TypeStats"
  desc "Menu bar app that counts key presses and clicks per app"
  homepage "https://github.com/dctmfoo/type-stats"

  depends_on macos: :sonoma

  app "TypeStats.app"

  uninstall quit: "local.typestats.TypeStats"

  zap trash: "~/Library/Application Support/TypeStats"
end
