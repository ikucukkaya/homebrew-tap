cask "notchbasket" do
  version "1.0.5"
  sha256 "3135eb32441f8c1cf3be71fd227152976c43e6f98753f0822314fa470836798c"

  url "https://github.com/ikucukkaya/notch-games/releases/download/v#{version}/NotchBasket-#{version}.dmg"
  name "NotchBasket"
  desc "Basketball hoop desktop toy that shoots at the MacBook notch"
  homepage "https://github.com/ikucukkaya/notch-games"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "NotchBasket.app"

  zap trash: "~/Library/Preferences/com.notchbasket.app.plist"
end
