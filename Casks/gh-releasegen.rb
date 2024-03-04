cask "gh-releasegen" do
  arch arm: "arm64", intel: "x64"
  version "0.2.0"
  sha256 arm: "6b98ed3ef3bcc986d6beaeb438f5f1a00dd71a0f9ed642a0dfc7f4de6785a134",
         intel: "f563e74fa400dfc6679a6518306d505a3754b1d2ddc1269f1a3a69490b2b4378"

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