cask 'sogouinput' do

    version "616a"
    sha256 :no_check
    url "http://ime.gtimg.com/pc/sogou_mac_guanwang_#{version}.zip"

    name "Sogou Input Method"
    name "搜狗输入法"
    desc "Input method supporting full and double spelling"
    homepage "https://pinyin.sogou.com/mac/"

    livecheck do
      url :homepage
      regex(/href=.*?sogou_mac_(\d+(?:\.\d+)*[a-z]*)\.zip/i)
    end

    auto_updates true

    installer manual: "sogou_mac_#{version.csv.first}.app"

    uninstall delete: [
                '/Library/Input Methods/SogouInput.app',
                '/Library/QuickLook/SogouSkinFileQuickLook.qlgenerator',
              ],
              launchctl: 'com.sogou.SogouServices'

    zap trash: [
          '~/.sogouinput',
          '~/Library/Application Support/Sogou/EmojiPanel',
          '~/Library/Application Support/Sogou/InputMethod',
          '~/Library/Caches/com.sogou.inputmethod.sogou',
          '~/Library/Caches/com.sogou.SGAssistPanel',
          '~/Library/Caches/com.sogou.SogouPreference',
          '~/Library/Caches/SogouServices',
          '~/Library/Cookies/com.sogou.inputmethod.sogou.binarycookies',
          '~/Library/Cookies/com.sogou.SogouPreference.binarycookies',
          '~/Library/Cookies/SogouServices.binarycookies',
          '~/Library/Preferences/com.sogou.SogouPreference.plist',
          '~/Library/Saved Application State/com.sogou.SogouInstaller.savedState',
        ],
        rmdir: '~/Library/Application Support/Sogou'
  end
