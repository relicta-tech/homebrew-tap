# typed: false
# frozen_string_literal: true

# Homebrew formula for Relicta
class Relicta < Formula
  desc "The governance layer for software change"
  homepage "https://github.com/relicta-tech/relicta"
  version "2.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_aarch64.tar.gz"
      sha256 "cfd65a57068b5e9414700a6e2b3b9b01bc0ee44c31d5eb9ff2271d50ec06efca"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_x86_64.tar.gz"
      sha256 "4f02fa7f0adbd98111dffbd4c98f95cf4e949cd80f358f944e1a1e50c6d4fbe5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_aarch64.tar.gz"
      sha256 "d4b50437c0057e417f8fa40f893b2b859f5b931caba9f09276bc0e507f033dd7"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_x86_64.tar.gz"
      sha256 "75a7ee8ac7856899f1a5b573415153b651f7cba0cb180816e7f0e4b0e602d0ed"
    end
  end

  def install
    bin.install "relicta"
  end

  test do
    system "#{bin}/relicta", "version"
  end
end
