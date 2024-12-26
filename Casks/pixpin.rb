cask "pixpin" do
  version "1.9.5.0"
  sha256 "30e43609473a4894d880c8c0774f43c1d91497df9639c0e72ceef7d9ca275970"

  url "https://download.pixpinapp.com/PixPin_#{version}.dmg"
  name "PixPin"
  desc "功能强大使用简单的截图/贴图工具，帮助你提高效率"
  homepage "https://pixpinapp.com/"

  depends_on macos: ">= :mojave"
  app "PixPin.app"
end
