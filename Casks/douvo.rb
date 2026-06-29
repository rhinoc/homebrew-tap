cask "douvo" do
  version "0.1.18"
  sha256 "e51aa1a2a0e65a1f9784228e7e206cb8166cd0c446691b6efd9203357b5527be"

  url "https://github.com/rhinoc/douvo/releases/download/v#{version}/douvo-#{version}-macos.dmg",
      verified: "github.com/rhinoc/douvo/"
  name "Douvo"
  desc "Menu bar speech-to-text app"
  homepage "https://github.com/rhinoc/douvo"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Douvo.app"

  caveats <<~EOS
    Current release builds are not notarized. If macOS blocks first launch, trust the installed app once:

      xattr -dr com.apple.quarantine /Applications/Douvo.app
      open /Applications/Douvo.app
  EOS

  zap trash: [
    "~/Library/Caches/local.douvo",
    "~/Library/HTTPStorages/local.douvo",
    "~/Library/Preferences/local.douvo.plist",
    "~/Library/Saved Application State/local.douvo.savedState",
  ]
end
