# typed: false
# frozen_string_literal: true

class Relicta < Formula
  desc "AI-powered release management for modern software teams"
  homepage "https://github.com/relicta-tech/relicta"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.2.0/relicta_Darwin_x86_64.tar.gz"
      sha256 "ffc27bc02219cfec881faf6f4fd429566e2f61fc0931b42cf3f02876e645f90f"
    end

    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.2.0/relicta_Darwin_aarch64.tar.gz"
      sha256 "0c0cb77e1f9b46a851e10219ab8ae0a7ae686cb645f8373959c5c35210ae1e57"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.2.0/relicta_Linux_x86_64.tar.gz"
      sha256 "917d6309963a10072742dd9c471ce8341441e7147afdda075230d6ff45bdb706"
    end

    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.2.0/relicta_Linux_aarch64.tar.gz"
      sha256 "7d274006a740b7865f20bbb0beef6b3da971ea2138bdfcc8cc73606389215aff"
    end
  end

  def install
    # Find the relicta binary in the extracted directory
    binary = Dir["**/relicta"].first
    bin.install binary => "relicta"
  end

  test do
    assert_match "relicta v#{version}", shell_output("#{bin}/relicta version")
  end
end
