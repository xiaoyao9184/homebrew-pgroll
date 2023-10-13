# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgroll < Formula
  desc "Postgres zero-downtime migrations made easy"
  homepage "https://www.xata.io"
  version "0.3.0-rc.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/xataio/pgroll/releases/download/v0.3.0-rc.1/pgroll.macos.amd64"
      sha256 "ca482aae68f120e4e36413f1d5d2182b2edc6a7afb082bdc57bfa72855cf70a9"

      def install
        bin.install "pgroll.macos.amd64" => "pgroll"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/xataio/pgroll/releases/download/v0.3.0-rc.1/pgroll.macos.arm64"
      sha256 "041b78da39d5836a91e43620ecd13e8022dd8eb4701385ed0d2ea281cf9c23f5"

      def install
        bin.install "pgroll.macos.arm64" => "pgroll"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xataio/pgroll/releases/download/v0.3.0-rc.1/pgroll.linux.arm64"
      sha256 "d59ab7e20d6393a0729bf222848b6a0b7f6f9ed6d23955aef7687161c08ba558"

      def install
        bin.install "pgroll.linux.arm64" => "pgroll"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xataio/pgroll/releases/download/v0.3.0-rc.1/pgroll.linux.amd64"
      sha256 "533546f11d3c52dd5f006ec5289af37529eec849ed1bc08c72296e7844cf05eb"

      def install
        bin.install "pgroll.linux.amd64" => "pgroll"
      end
    end
  end
end
