# typed: false
# frozen_string_literal: true

# Homebrew Formula for innen - Deterministic, zero-daemon CLI knowledge engine for LLM agents
class Innen < Formula
  desc "Deterministic, zero-daemon CLI knowledge engine for LLM agents (Karpathy LLM Wiki)"
  homepage "https://github.com/RikaiDev/innen"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RikaiDev/innen/releases/download/v#{version}/innen-aarch64-apple-darwin.tar.gz"
      sha256 "a8f4c6f24ccbe66cb1a4505e711624db655aac9ceca5719ee424773d89f48733"
    end
  end

  def install
    bin.install "innen"
  end

  test do
    assert_match "innen", shell_output("#{bin}/innen --help")
  end
end
