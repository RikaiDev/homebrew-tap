# typed: false
# frozen_string_literal: true

# Homebrew Formula for innen - Deterministic, zero-daemon CLI knowledge engine for LLM agents
class Innen < Formula
  desc "Deterministic, zero-daemon CLI knowledge engine for LLM agents (Karpathy LLM Wiki)"
  homepage "https://github.com/RikaiDev/innen"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RikaiDev/innen/releases/download/v#{version}/innen-aarch64-apple-darwin.tar.gz"
      sha256 "9f025afc126e160958641bb0ad930eeab86546818cc808a59bd13dedd2a89ac9"
    end
  end

  def install
    bin.install "innen"
  end

  test do
    assert_match "innen", shell_output("#{bin}/innen --help")
  end
end