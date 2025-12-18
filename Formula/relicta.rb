# typed: false
# frozen_string_literal: true

# Homebrew formula for Relicta
class Relicta < Formula
  desc "AI-powered release management for modern software teams"
  homepage "https://github.com/relicta-tech/relicta"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_aarch64.tar.gz"
      sha256 "f1f77b09dd0a973d0776643549fe1f7797ed7ccad6e54f24b427f91b0830c89b"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_x86_64.tar.gz"
      sha256 "fcadae73db695f3b869a934b3a15fac8ca69c260f819357c7df6cdf83db127f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_aarch64.tar.gz"
      sha256 "12bace7a489c5d4febe3eacfb364617f1f14ebf887bd740d99a01d3019f36599"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_x86_64.tar.gz"
      sha256 "b899702c33faa4dcac51def6379c7c646a8b1f2862ef4f800f67eb220ed7354d"
    end
  end

  def install
    bin.install "relicta"
  end

  test do
    system "#{bin}/relicta", "version"
  end
end
