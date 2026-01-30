class ClaudeInMobile < Formula
  desc "Fast native CLI for mobile device automation (Android/iOS/Aurora/Desktop)"
  homepage "https://github.com/AlexGladkov/claude-in-mobile"
  version "2.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AlexGladkov/claude-in-mobile/releases/download/release-#{version}/claude-in-mobile-#{version}-darwin-arm64.tar.gz"
      sha256 "0b208b00ff6139a1ab3bfa21c595bac8a395428de1031d32be6419122fb4c4be"
    end
  end

  on_linux do
    url "https://github.com/AlexGladkov/claude-in-mobile/releases/download/release-#{version}/claude-in-mobile-#{version}-linux-x86_64.tar.gz"
    sha256 "58fe80ca15067632e18dba6936b399497aa0df66cdc853e73625c92b8d8ee625"
  end

  def install
    bin.install "claude-in-mobile"
  end

  test do
    system "#{bin}/claude-in-mobile", "--version"
  end
end
