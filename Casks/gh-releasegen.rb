cask "gh-releasegen" do
  arch arm: "arm64", intel: "x64"
  version "0.2.1"
  sha256 arm: "838ea47833a547e25d51dcb67da0f858eb510082e11e5b64ba10627350344792",
         intel: "ef8d605a262e34bda9eb33cb170eeb75ead61bb6a01912f3ebf068595ad93c70"

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