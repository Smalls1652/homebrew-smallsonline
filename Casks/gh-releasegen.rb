cask "gh-releasegen" do
  arch arm: "arm64", intel: "x64"
  version "0.4.1"
  sha256 arm: "4b3ecbd7a8f3256b4858026dd4e4e43eb353d3b6b60cf9eb3dca85d25e6fa1ac",
         intel: "e84f6448e6469048ec2f17988f3102a8d079ffc6c32dbfe821aac1e81b4cf85e"

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