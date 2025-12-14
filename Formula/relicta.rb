# typed: false
# frozen_string_literal: true

class Relicta < Formula
  desc "AI-powered release management for modern software teams"
  homepage "https://github.com/relicta-tech/relicta"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.0.0/relicta_Darwin_x86_64.tar.gz"
      sha256 "6989a4df22073ee592c88a5e566915d951c9e96435e1d5cb6be4cf9e92a3abbb"

      def install
        bin.install "relicta_Darwin_x86_64/relicta"
      end
    end

    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.0.0/relicta_Darwin_aarch64.tar.gz"
      sha256 "c4f75612fdcbe000fa5b9fb5bb6b169b4eadd687bcf0dcafd50e5d8ab70b7abb"

      def install
        bin.install "relicta_Darwin_aarch64/relicta"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.0.0/relicta_Linux_x86_64.tar.gz"
      sha256 "5a36a84f72c8220d8410770fbeb414320f985b42a967337979567872372c1a4e"

      def install
        bin.install "relicta_Linux_x86_64/relicta"
      end
    end

    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.0.0/relicta_Linux_aarch64.tar.gz"
      sha256 "67d4fb40105a2e5bc4a6c24d47879727a7ff879f1e8e70f5b53bb82a2d5f808f"

      def install
        bin.install "relicta_Linux_aarch64/relicta"
      end
    end
  end

  test do
    assert_match "relicta v#{version}", shell_output("#{bin}/relicta version")
  end
end
