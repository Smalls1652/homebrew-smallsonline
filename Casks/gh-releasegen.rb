cask "gh-releasegen" do
  arch arm: "arm64", intel: "x64"
  version "0.4.0"
  sha256 arm: "fcf488a5d4fd559da2cdf54a1f41c5fa195e86e343aaefbd398e95d6785717fb",
         intel: "687d1284b576fd4460284b691592e750d7274bbd23241cc5e99f73d4ae198d64"

  url "https://github.com/Smalls1652/GitHubReleaseGen/releases/download/v#{version}/gh-releasegen_osx-#{arch}_v#{version}.zip"
  name "gh-releasegen"
  desc "CLI tool for generating release notes for GitHub releases."
  homepage "https://github.com/Smalls1652/GitHubReleaseGen"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  binary "gh-releasegen"

end