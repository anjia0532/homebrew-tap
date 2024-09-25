cask "pixpin" do
  version "1.8.22.0"
  sha256 "5d2135950842539623b2d1f3ab62700de690c502aeb8eec2dec388a56078b337"

  url "https://download.pixpinapp.com/PixPin_#{version}.dmg"
  name "PixPin"
  desc "功能强大使用简单的截图/贴图工具，帮助你提高效率"
  homepage "https://pixpinapp.com/"

  depends_on macos: ">= :mojave"
  app "PixPin.app"
end
