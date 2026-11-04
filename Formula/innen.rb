# typed: false
# frozen_string_literal: true

# Homebrew Formula for innen - Deterministic, zero-daemon CLI knowledge engine for LLM agents
class Innen < Formula
  desc "Deterministic, zero-daemon CLI knowledge engine for LLM agents (Karpathy LLM Wiki)"
  homepage "https://github.com/RikaiDev/innen"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RikaiDev/innen/releases/download/v#{version}/innen-aarch64-apple-darwin.tar.gz"
      sha256 "a4d79a8fe38915600bd6627f198bbba0df89e6ff7801e19190452c90211c7a3b"
    end
  end

  def install
    bin.install "innen"
  end

  test do
    assert_match "innen", shell_output("#{bin}/innen --help")
  end
end
