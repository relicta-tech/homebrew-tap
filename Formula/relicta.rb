# typed: false
# frozen_string_literal: true

# Homebrew formula for Relicta
class Relicta < Formula
  desc "The governance layer for software change"
  homepage "https://github.com/relicta-tech/relicta"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_darwin_arm64.tar.gz"
      sha256 "2a4e1f9697135612b8bed06ea0995b8b1f82dcb5fa6f5cc9f28a1f22d8ae22d0"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_darwin_amd64.tar.gz"
      sha256 "d03602b9a4e0ddd4394b3c030d9d106030db528e804f7d2820ccff6da455a517"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_linux_arm64.tar.gz"
      sha256 "a33afba3021470e3354eb2e3a66772bbd6c18e30e3565e7f7ee359d6f75cd860"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v#{version}/relicta_linux_amd64.tar.gz"
      sha256 "19d5c35a5cab84a3087dd6dde4c15716ce14e02f30244592ac2b58d2b59d527b"
    end
  end

  def install
    bin.install "relicta"
  end

  test do
    system "#{bin}/relicta", "version"
  end
end
