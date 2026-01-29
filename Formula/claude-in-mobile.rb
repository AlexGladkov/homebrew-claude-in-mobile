class ClaudeInMobile < Formula
  desc "Fast native CLI for mobile device automation (Android/iOS/Aurora/Desktop)"
  homepage "https://github.com/AlexGladkov/claude-in-mobile"
  version "2.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AlexGladkov/claude-in-mobile/releases/download/v#{version}/claude-in-mobile-#{version}-darwin-arm64.tar.gz"
      sha256 "REPLACE_WITH_ARM64_SHA256"
    else
      url "https://github.com/AlexGladkov/claude-in-mobile/releases/download/v#{version}/claude-in-mobile-#{version}-darwin-x86_64.tar.gz"
      sha256 "REPLACE_WITH_X86_64_SHA256"
    end
  end

  on_linux do
    url "https://github.com/AlexGladkov/claude-in-mobile/releases/download/v#{version}/claude-in-mobile-#{version}-linux-x86_64.tar.gz"
    sha256 "REPLACE_WITH_LINUX_SHA256"
  end

  def install
    bin.install "claude-in-mobile"
  end

  test do
    system "#{bin}/claude-in-mobile", "--version"
  end
end
