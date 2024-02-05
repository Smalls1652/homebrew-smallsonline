cask "gh-releasegen" do
  arch arm: "arm64", intel: "x64"
  version "0.1.0"
  sha256 arm: "beb1fb66ceb97a2df31d87bde17f6e3b9a4ef484270c8f3ab932748c0ca31d09",
         intel: "c6abbb7dfa9eca7c62d81b0e483366bb05852598b83087119ca5b82786949de2"

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
