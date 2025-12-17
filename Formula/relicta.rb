class Relicta < Formula
  desc "AI-powered release management CLI"
  homepage "https://github.com/relicta-tech/relicta"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.2.0/relicta_Darwin_aarch64.tar.gz"
      sha256 "2e8f21f906e997ffd653a70d06e317a142a45e31d95c6432bc2ee15e4024cbcb"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.2.0/relicta_Darwin_x86_64.tar.gz"
      sha256 "82bb9e098d4c9d242be1300e285cec49df3ab873c1ebda12a627d4236eda97e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.2.0/relicta_Linux_aarch64.tar.gz"
      sha256 "92a95630112b6b0e292aaf18a690a4b9ac2f4427285e8b423a20ff0fda8278a3"
    end
    on_intel do
      url "https://github.com/relicta-tech/relicta/releases/download/v2.2.0/relicta_Linux_x86_64.tar.gz"
      sha256 "23fda479ed63cbf7c47a37992e1050dfa64ea56902514ab943247c51cb8d6d99"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "relicta_Darwin_aarch64/relicta"
      else
        bin.install "relicta_Darwin_x86_64/relicta"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "relicta_Linux_aarch64/relicta"
      else
        bin.install "relicta_Linux_x86_64/relicta"
      end
    end
  end

  test do
    system "#{bin}/relicta", "version"
  end
end
