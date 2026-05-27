class ClaudeInMobile < Formula
  desc "Fast native CLI for mobile device automation (Android/iOS/Aurora/Desktop)"
  homepage "https://github.com/AlexGladkov/claude-in-mobile"
  version "3.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AlexGladkov/claude-in-mobile/releases/download/v#{version}/claude-in-mobile-#{version}-darwin-arm64.tar.gz"
      sha256 "cacfb737e1f58a58aa963d541a71d357d6159f61a10fb4709ae3b377179f354a"
    end
    on_intel do
      url "https://github.com/AlexGladkov/claude-in-mobile/releases/download/v#{version}/claude-in-mobile-#{version}-darwin-x86_64.tar.gz"
      sha256 "da70cf1f2a30369c052118411cb4792ffc9313e5401b7d4f21eeef7036d33da9"
    end
  end

  def install
    bin.install "claude-in-mobile"
  end

  test do
    system "#{bin}/claude-in-mobile", "--version"
  end
end
