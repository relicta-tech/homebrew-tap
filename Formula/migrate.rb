# typed: false
# frozen_string_literal: true

# Homebrew formula for Relicta Migrate
class Migrate < Formula
  desc "Migration tool for switching to Relicta from other release tools"
  homepage "https://github.com/relicta-tech/migrate"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/relicta-tech/migrate/releases/download/v#{version}/migrate_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    end
    on_intel do
      url "https://github.com/relicta-tech/migrate/releases/download/v#{version}/migrate_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/relicta-tech/migrate/releases/download/v#{version}/migrate_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/relicta-tech/migrate/releases/download/v#{version}/migrate_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64"
    end
  end

  def install
    bin.install "migrate"
  end

  test do
    system "#{bin}/migrate", "version"
  end
end
