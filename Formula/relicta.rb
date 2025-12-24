# typed: false
# frozen_string_literal: true

# Homebrew formula for Relicta
class Relicta < Formula
  desc "The governance layer for software change"
  homepage "https://github.com/relicta-tech/relicta"
  version "2.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_aarch64.tar.gz"
      sha256 "c66ee9650e985ac7f6127299c835d3166bacf8eda9e9064cd95e741300302b88"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Darwin_x86_64.tar.gz"
      sha256 "c0d68c939bdf13de135fcd930cf2f44b88833e06b3588f5acff8b139e99b68d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_aarch64.tar.gz"
      sha256 "2d70256a5200f2d1de1d59e1525e1ab355fba9a9c04f91d1fe09221d445e5098"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_Linux_x86_64.tar.gz"
      sha256 "493eda1c8695f39e4ff384d97bcffc41ca4bb10f2b80725dd066c2eab2d3095d"
    end
  end

  def install
    bin.install "relicta"
  end

  test do
    system "#{bin}/relicta", "version"
  end
end
