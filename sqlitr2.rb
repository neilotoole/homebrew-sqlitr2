# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sqlitr2 < Formula
  desc "sqlitr2 is a trivial Go/CGo SQLite CLI"
  homepage "https://github.com/neilotoole/sqlitr2"
  version "0.0.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.29/sqlitr2_0.0.29_macos_amd64.tar.gz"
      sha256 "ad08d0dbe467244fdde28e8b0bd315f56efac6fdffaddc2d138092a5beeca64f"

      def install
        bin.install "sqlitr2"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.29/sqlitr2_0.0.29_macos_arm64.tar.gz"
      sha256 "79d00cc10ea918d6581526f24aad140687af3f5edf592f9f70d29deec759975b"

      def install
        bin.install "sqlitr2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.29/sqlitr2_0.0.29_linux_arm64.tar.gz"
      sha256 "3510c3f3f6af5a909b43d3ab3786d1502c285e88050204b17ad32488bb75da97"

      def install
        bin.install "sqlitr2"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/neilotoole/sqlitr2/releases/download/v0.0.29/sqlitr2_0.0.29_linux_amd64.tar.gz"
      sha256 "af33e303f1f89c0ec7c39f18bd63bb83d43c155ce28af2d50785b6736fe0c086"

      def install
        bin.install "sqlitr2"
      end
    end
  end

  test do
    system "#{bin}/sqlitr2 --version"
  end
end
