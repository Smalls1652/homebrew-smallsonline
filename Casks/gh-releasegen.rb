cask "gh-releasegen" do
  arch arm: "arm64", intel: "x64"
  version "0.1.1"
  sha256 arm: "02f88110323bcdcc8ee87ee29a3a9c0e4d3332c0009c1e012d4505fdd0aad9dc",
         intel: "17af73771409f1e2aacb57a8a8255412028eb516c8d0dd7d6271129e71ca4e71"

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