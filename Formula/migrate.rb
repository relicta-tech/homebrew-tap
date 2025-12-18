# typed: false
# frozen_string_literal: true

# Homebrew formula for Relicta Migrate
class Migrate < Formula
  desc "Migration tool for switching to Relicta from other release tools"
  homepage "https://github.com/relicta-tech/migrate"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/relicta-tech/migrate/releases/download/v#{version}/migrate_darwin_arm64.tar.gz"
      sha256 "fde9030fe886a701226b4fa7014b6613d55a4f5b785a4153dafdf9bd324e28e8"
    end
    on_intel do
      url "https://github.com/relicta-tech/migrate/releases/download/v#{version}/migrate_darwin_amd64.tar.gz"
      sha256 "4594d91a9766192a9b3587afece9d0874508f3bf53e554a62ab81f8632518445"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/relicta-tech/migrate/releases/download/v#{version}/migrate_linux_arm64.tar.gz"
      sha256 "63597e4d10af750a2ef8eb5fb12245da00fee8ab04690c08578f32c42671b112"
    end
    on_intel do
      url "https://github.com/relicta-tech/migrate/releases/download/v#{version}/migrate_linux_amd64.tar.gz"
      sha256 "e0cef4112e7f1ae9d7b652546b770f1de99662a5519cf7a8892a0274cb9f9c4d"
    end
  end

  def install
    bin.install "migrate"
  end

  test do
    system "#{bin}/migrate", "version"
  end
end
