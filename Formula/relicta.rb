# typed: false
# frozen_string_literal: true

# Homebrew formula for Relicta
class Relicta < Formula
  desc "AI-powered release management for modern software teams"
  homepage "https://github.com/relicta-tech/relicta"
  version "2.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_aarch64.tar.gz"
      sha256 "6010f752fd21368a106b0043405e08473668ffc307da0c7b050c3be108b85376"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_x86_64.tar.gz"
      sha256 "1cbe603bd9bb2f9754b63dbd7bc02e12b0f93712d71932e2223b497a6db023b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_aarch64.tar.gz"
      sha256 "c89ff6dcfe5b474c3d4bf3974ce03c0e203e8608f2bacbd98def931335cb2804"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_x86_64.tar.gz"
      sha256 "36f714e6023fc1e8216a416cb58b501b40e92417a55b37cd4aa73e9d9a95e3ac"
    end
  end

  def install
    bin.install "relicta"
  end

  test do
    system "#{bin}/relicta", "version"
  end
end
