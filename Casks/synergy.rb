# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "synergy" do
  version "3.0.80.1-rc3"
  sha256 "e381e9a13dee7281a1cca80e5f8af67fc0a0681c002c8299ba47c67544f05d0e"

  url "https://symless.com/synergy/api/download/synergy-macOS_arm64-v#{version}.dmg",
      referer: "https://symless.com/synergy/download/package/mac/synergy-macOS_arm64-v#{version}.dmg"

  name "synergy"
  desc "Use the keyboard, mouse, or trackpad of one computer to control nearby computers, and work seamlessly between them."
  homepage "https://symless.com/synergy/download"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  # href="/synergy/download/package/mac/synergy-macOS_arm64-v3.0.80.1-rc3.dmg">
  livecheck do
    url :homepage
    regex(%r{href=/.*/macOS_arm64-.*\.dmg}i)
    strategy :page_match
  end

  depends_on macos: ">= :mojave"

  app "Synergy.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
