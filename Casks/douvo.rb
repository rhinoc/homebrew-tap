cask "douvo" do
  version "0.1.8"
  sha256 "aa2da57f3abe37af6a676b49f97cc3c82544a4d09a07a1499de16ee1f61513f7"

  url "https://github.com/rhinoc/douvo/releases/download/v#{version}/douvo-#{version}-macos.dmg",
      verified: "github.com/rhinoc/douvo/"
  name "Douvo"
  desc "Menu bar speech-to-text app"
  homepage "https://github.com/rhinoc/douvo"

  depends_on macos: :ventura

  app "Douvo.app"

  zap trash: [
    "~/Library/Caches/local.douvo",
    "~/Library/HTTPStorages/local.douvo",
    "~/Library/Preferences/local.douvo.plist",
    "~/Library/Saved Application State/local.douvo.savedState",
  ]
end
