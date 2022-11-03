# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sqlitr2 < Formula
  desc "sqlitr2 is a trivial Go/CGo SQLite CLI"
  homepage "https://github.com/neilotoole/sqlitr2"
  version "0.0.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.16/sqlitr2_0.0.16_macos_arm64.tar.gz"
      sha256 "1ad8f3c0dac626ff9dac4b209c94ab67a98d75f8bfafb665eebc18eaa1a53b29"

      def install
        bin.install "sqlitr2"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.16/sqlitr2_0.0.16_macos_amd64.tar.gz"
      sha256 "bff4697410e9fb8011e24608236f75b0dcea454757b898f49a4b43ac19e19377"

      def install
        bin.install "sqlitr2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.16/sqlitr2_0.0.16_linux_arm64.tar.gz"
      sha256 "e4b8a035f8b06254f8899f4a1facc79a37140c88a5005317ad83743122190145"

      def install
        bin.install "sqlitr2"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.16/sqlitr2_0.0.16_linux_amd64.tar.gz"
      sha256 "78e68f76470b87a12c3384a3316a355d537c3bd2bf80791d97e38288eabe64de"

      def install
        bin.install "sqlitr2"
      end
    end
  end

  test do
    system "#{bin}/sqlitr2 --version"
  end
end
