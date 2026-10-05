# typed: false
# frozen_string_literal: true

# Homebrew Formula for innen - Deterministic, zero-daemon CLI knowledge engine for LLM agents
class Innen < Formula
  desc "Deterministic, zero-daemon CLI knowledge engine for LLM agents (Karpathy LLM Wiki)"
  homepage "https://github.com/RikaiDev/innen"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RikaiDev/innen/releases/download/v#{version}/innen-aarch64-apple-darwin.tar.gz"
      sha256 "693575042714d32deaf3bf54aa5f08ffb72410cb8416faf90cfda2de785b6e82"
    end
  end

  def install
    bin.install "innen"
  end

  test do
    assert_match "innen", shell_output("#{bin}/innen --help")
  end
end
