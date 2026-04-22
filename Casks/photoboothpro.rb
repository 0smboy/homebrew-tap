cask "photoboothpro" do
  version "1.1.0"
  sha256 "7e792a564785e60b93950659930ef614885aaf32a73c4ab83535727031092d01"

  url "https://github.com/0smboy/PhotoBoothPro/releases/download/v#{version}/PhotoBoothPro-v#{version}-macOS.zip"
  name "PhotoBooth Pro"
  desc "macOS photo booth with real-time Core Image filters, screen flash, video recording, and AI style transfer"
  homepage "https://github.com/0smboy/PhotoBoothPro"

  depends_on macos: ">= :sonoma"

  app "PhotoBoothPro.app"

  # The release bundle is ad-hoc signed. Gatekeeper will still warn on first
  # launch — users can right-click → Open, or run:
  #   xattr -cr /Applications/PhotoBoothPro.app
  zap trash: [
    "~/Library/Application Support/PhotoBoothPro",
    "~/Library/Preferences/com.photoboothpro.app.plist",
    "~/Library/Saved Application State/com.photoboothpro.app.savedState",
  ]
end
