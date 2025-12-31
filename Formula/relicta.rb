# typed: false
# frozen_string_literal: true

class Relicta < Formula
  desc "AI-powered release governance for modern software teams"
  homepage "https://github.com/relicta-tech/relicta"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/relicta-tech/relicta/releases/download/v3.1.0/relicta_darwin_amd64.tar.gz"
      sha256 "cfcf044993a340116e155d81d80b655b55860c5a0f793d345f1a97bfa8561ebf"

      def install
        bin.install "relicta"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/relicta-tech/relicta/releases/download/v3.1.0/relicta_darwin_arm64.tar.gz"
      sha256 "6fad2bae2b6430680dee0ccd3b38314c5e882c524e866c0079b7b278b5fe2685"

      def install
        bin.install "relicta"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/relicta-tech/relicta/releases/download/v3.1.0/relicta_linux_amd64.tar.gz"
      sha256 "6262f628cd3e7836d52aad620e1150358e5ec04e24f4cc6bc919f798d2f6f492"

      def install
        bin.install "relicta"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/relicta-tech/relicta/releases/download/v3.1.0/relicta_linux_arm64.tar.gz"
      sha256 "6c5934371ec9b52a59b4a835f8d72ef1b0169cdfe73d4772554b590ef7c49b38"

      def install
        bin.install "relicta"
      end
    end
  end

  test do
    system "#{bin}/relicta", "version"
  end
end
