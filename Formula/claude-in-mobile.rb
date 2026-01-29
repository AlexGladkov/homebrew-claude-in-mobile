class ClaudeInMobile < Formula
  desc "Fast native CLI for mobile device automation (Android/iOS/Aurora/Desktop)"
  homepage "https://github.com/AlexGladkov/claude-in-mobile"
  version "2.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AlexGladkov/claude-in-mobile/releases/download/release-#{version}/claude-in-mobile-#{version}-darwin-arm64.tar.gz"
      sha256 "75788c453bfd7cf8f11e9609614b983801fb04540d69a48e2642e21f91f67682"
    end
  end

  def install
    bin.install "claude-in-mobile"
  end

  test do
    system "#{bin}/claude-in-mobile", "--version"
  end
end
