cask "notchbasket" do
  version "1.0.4"
  sha256 "cd57518d7dd3ef95bff89909c0c9cf684573c71e385f39a33946c4316ccdce63"

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
