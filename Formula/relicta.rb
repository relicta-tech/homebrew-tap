# typed: false
# frozen_string_literal: true

# Homebrew formula for Relicta
class Relicta < Formula
  desc "AI-powered release management for modern software teams"
  homepage "https://github.com/relicta-tech/relicta"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_aarch64.tar.gz"
      sha256 "12cef317b04571cdb2d0902dedc1b5a1a7550a4881e343be99cac70e3babf472"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_x86_64.tar.gz"
      sha256 "cce6281388d485ee593989710581b55f316402333a66f644242f362cfdc3bf89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_aarch64.tar.gz"
      sha256 "57db3067de854a76a893240971ce12f483d9532a45f8797ad3b14b5208d18480"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_x86_64.tar.gz"
      sha256 "39632e74306658f6ffda25591d572468d1fbfd9dd842316efda6e3c34784a71f"
    end
  end

  def install
    bin.install "relicta"
  end

  test do
    system "#{bin}/relicta", "version"
  end
end
