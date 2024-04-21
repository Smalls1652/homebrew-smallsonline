cask "gh-releasegen" do
  arch arm: "arm64", intel: "x64"
  version "0.3.0"
  sha256 arm: "d9130964ef7cc8cc624c85026480045a52ed9a1b6c285b0161f115fbee25e83c",
         intel: "a8a75768acea5a2d3d6bb2f27f42dea67bea1138977a713f34437dd28ed8a09e"

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