cask "douvo" do
  version "0.1.28"
  sha256 "0670100504b7c999afca98c8511731edce7ab73bce3d2cd2ca286e21dcd55e77"

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
