# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "synergy" do
  version "3.2.1"
  sha256 "e1dd69fb158235c42b4cd39c41351d3107bd8d918bb80ecd4d4214b4671102bd"

  url "https://symless.com/synergy/synergy/api/download/synergy-#{version}-macos-arm64.dmg",
      referer: "https://symless.com/synergy/download/package/mac/synergy-#{version}-macos-arm64.dmg"

  name "synergy"
  desc "Use the keyboard, mouse, or trackpad of one computer to control nearby computers, and work seamlessly between them."
  homepage "https://symless.com/synergy/download"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  # href="/synergy/download/package/mac/synergy-macOS_arm64-v3.0.80.1-rc3.dmg">
  livecheck do
    url :homepage
    regex(/href=.*?synergy[._-]v?(\d+(?:\.\d+)+)-macos-arm64\.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :mojave"

  app "Synergy.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
