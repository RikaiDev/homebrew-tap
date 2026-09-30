# typed: false
# frozen_string_literal: true

# Homebrew Formula for innen - Deterministic, zero-daemon CLI knowledge engine for LLM agents
class Innen < Formula
  desc "Deterministic, zero-daemon CLI knowledge engine for LLM agents (Karpathy LLM Wiki)"
  homepage "https://github.com/RikaiDev/innen"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RikaiDev/innen/releases/download/v#{version}/innen-aarch64-apple-darwin.tar.gz"
      sha256 "84feee2fe77dd216d18a76271deb8025e1523a8ce73f2b7d7a3ad9d74b26973c"
    end
  end

  def install
    bin.install "innen"
  end

  test do
    assert_match "innen", shell_output("#{bin}/innen --help")
  end
end
