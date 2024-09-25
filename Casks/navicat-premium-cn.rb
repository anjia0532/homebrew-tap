cask "navicat-premium-cn" do
  version "17.1.3"
  sha256 :no_check

  url "https://dn.navicat.com.cn/download/navicat#{version.major}_premium_cs.dmg"
  name "Navicat Premium"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com.cn/products/navicat-premium"

  livecheck do
    url "https://updater.navicat.com.cn/mac/v#{version.major}/navicat_updates.php?appName=Navicat%20Premium"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: %w[
    navicat-premium@15
    navicat-premium
  ]

  depends_on macos: ">= :mojave"

  app "Navicat Premium.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat Premium",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatPremium.plist",
    "~/Library/Saved Application State/com.navicat.NavicatPremium.savedState",
  ]
end
