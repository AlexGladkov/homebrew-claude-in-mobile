class ClaudeInMobile < Formula
  desc "Fast native CLI for mobile device automation (Android/iOS/Aurora/Desktop)"
  homepage "https://github.com/AlexGladkov/claude-in-mobile"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AlexGladkov/claude-in-mobile/releases/download/v#{version}/claude-in-mobile-#{version}-darwin-arm64.tar.gz"
      sha256 "a5b18b4d80d3e561836d781df25e4491a46ca66505a4915238351860433bf73d"
    end
    on_intel do
      url "https://github.com/AlexGladkov/claude-in-mobile/releases/download/v#{version}/claude-in-mobile-#{version}-darwin-x86_64.tar.gz"
      sha256 "6562bff0d41c2c16e966714db8520aaf90753e7e6bb6d3f1b9dbcdc2c2cfa394"
    end
  end

  def install
    bin.install "claude-in-mobile"
  end

  test do
    system "#{bin}/claude-in-mobile", "--version"
  end
end
