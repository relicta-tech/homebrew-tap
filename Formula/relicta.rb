# typed: false
# frozen_string_literal: true

# Homebrew formula for Relicta
class Relicta < Formula
  desc "The governance layer for software change"
  homepage "https://github.com/relicta-tech/relicta"
  version "2.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_aarch64.tar.gz"
      sha256 "5cd86b2c0514fb85c8daabbe768cd283de44bb116ea3ff1cf96348713eb53091"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_x86_64.tar.gz"
      sha256 "b890cd3a5c8659ee78a157c508c280f697747d763398c55c90933a07e0eb3de0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_aarch64.tar.gz"
      sha256 "cf1f2155a294120e221df9bf3c7c676d4896303e1a43c7a68ca05efebdce17dd"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_x86_64.tar.gz"
      sha256 "5ac51440a82bf96f81e49f3d188a6a7ac6fed02aef3ef19684f6cf21001a4b8a"
    end
  end

  def install
    bin.install "relicta"
  end

  test do
    system "#{bin}/relicta", "version"
  end
end
