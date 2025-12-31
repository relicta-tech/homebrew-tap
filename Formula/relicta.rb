# typed: false
# frozen_string_literal: true

# Relicta Homebrew formula
class Relicta < Formula
  desc "AI-powered release governance for modern software teams"
  homepage "https://github.com/relicta-tech/relicta"
  version "3.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v3.0.1/relicta_darwin_amd64.tar.gz"
      sha256 "5bcf73d88667e1fb8319379c9e611580322fe4a30894017049401bab3bf0b375"
    end
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v3.0.1/relicta_darwin_arm64.tar.gz"
      sha256 "777350969c7e3fb7d701fa3c009daf8915b4a2c37bb26160a7db4e1bf2218b63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v3.0.1/relicta_linux_amd64.tar.gz"
      sha256 "4581ae38c5aa81056d384064007ecc0f9aa063e742004b4d24515ff3609ca35b"
    end
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v3.0.1/relicta_linux_arm64.tar.gz"
      sha256 "62fd27bb244f58170fedf07e66c063c34ca6fed8c6287dd8ee54b040ded26e41"
    end
  end

  def install
    bin.install "relicta"
  end

  test do
    system "#{bin}/relicta", "version"
  end
end
