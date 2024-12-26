# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "synergy" do
  version "3.2.1"
  sha256 "bb68a0c9e427b31abc111d1c77e267afa240816a800600f6c361c1197d64a331"

  url "https://symless.com/synergy/synergy/api/download/synergy-#{version}-macos-arm64.dmg",
      referer: "https://symless.com/synergy/download/package/mac/synergy-#{version}-macos-arm64.dmg"

  name "synergy"
  desc "Use the keyboard, mouse, or trackpad of one computer to control nearby computers, and work seamlessly between them."
  homepage "https://symless.com/synergy/download"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  # href="/synergy/download/package/mac/synergy-macOS_arm64-v3.0.80.1-rc3.dmg">
  livecheck do
    url :homepage
    regex(%r{href=/.*/synergy-.*-macos-arm64\.dmg}i)
    strategy :page_match
  end

  depends_on macos: ">= :mojave"

  app "Synergy.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
