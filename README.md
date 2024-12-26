# Anjia0532 Tap

## 安装应用

### 二进制

```bash

# voidint/g
brew install anjia0532/tap/g

# apache-maven
brew install anjia0532/tap/maven
```

### GUI

```bash
brew install --cask anjia0532/tap/navicat-premium-cn
brew install --cask anjia0532/tap/pixpin
brew install --cask anjia0532/tap/sogouinput
brew install --cask anjia0532/tap/synergy
```

## 创建新包

```bash
# voidint/g
brew create --set-name g --set-version 1.7.0 --tap anjia0532/homebrew-tap https://github.com/voidint/g/releases/download/v1.7.0/g1.7.0.darwin-arm64.tar.gz

# navicat-premium-cn
brew create --cask --set-name navicat-premium-cn --set-version 17.1.8 --tap anjia0532/homebrew-tap https://dn.navicat.com.cn/download/navicat17_premium_cs.dmg

# pixpin
brew create --cask --set-name pixpin --set-version 1.9.5.0 --tap anjia0532/homebrew-tap https://download.pixpinapp.com/PixPin_1.9.5.0.dmg

# sogouinput
brew create --cask --set-name sogouinput --set-version 616a --tap anjia0532/homebrew-tap http://ime.gtimg.com/pc/sogou_mac_guanwang_616a.zip

# synergy
brew create --cask --set-name synergy --set-version 3.2.1 --tap anjia0532/homebrew-tap https://symless.com/synergy/synergy/api/download/synergy-3.2.1-macos-arm64.dmg
```

通过 url 计算checksum
```bash
curl -sL https://download.pixpinapp.com/PixPin_1.9.5.0.dmg | sha256sum
```
