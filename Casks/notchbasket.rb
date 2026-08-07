cask "notchbasket" do
  version "1.0.5"
  sha256 "c09ca282c54771866b003db8c0c3d79a9602e80db03eb0dcc83a4382574e0e1e"

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
