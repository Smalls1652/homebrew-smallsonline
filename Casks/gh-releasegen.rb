cask "gh-releasegen" do
  arch arm: "arm64", intel: "x64"
  version "0.4.2"
  sha256 arm: "98ea9536ce5c0bdab0999ff637510c3e9fe8c0f6c45ea2ebbc7332a70fe70ab1",
         intel: "1eefb92aeac775e6fdc0870f0ec57b6483a91537bd4315346825f296295bc9ff"

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