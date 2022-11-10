# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sqlitr2 < Formula
  desc "sqlitr2 is a trivial Go/CGo SQLite CLI"
  homepage "https://github.com/neilotoole/sqlitr2"
  version "0.0.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.32/sqlitr2_0.0.32_macos_amd64.tar.gz"
      sha256 "869cfc35bfec0a2a4b92e05cfd8321f40dddd3b33b6e5b3061a1a176456b8083"

      def install
        bin.install "sqlitr2"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.32/sqlitr2_0.0.32_macos_arm64.tar.gz"
      sha256 "cc240aa0bedc55ac861fad65bc56de5995b417ce19082ae3df4619b4948b5d90"

      def install
        bin.install "sqlitr2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.32/sqlitr2_0.0.32_linux_arm64.tar.gz"
      sha256 "8cfaffffa902dc09506cd492930d8b79f0e96c88fa0ef5a833010f2f20f9ac2b"

      def install
        bin.install "sqlitr2"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.32/sqlitr2_0.0.32_linux_amd64.tar.gz"
      sha256 "c715ba10fd709b59995fa2ff625de7dbca267aa0ee080fb8cf0ac603037b8793"

      def install
        bin.install "sqlitr2"
      end
    end
  end

  test do
    system "#{bin}/sqlitr2 --version"
  end
end
