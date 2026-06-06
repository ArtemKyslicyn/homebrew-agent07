cask "agent07" do
  version "1.0.0"
  sha256 "3472333cd221f64a05fbe74e1d3ea1cc7656ae6fa073844b2e67f5af1f568bc3"

  # Pre-built binary is hosted on THIS public tap's own Releases, so `brew
  # install` needs no token even though the app's source repo is private.
  url "https://github.com/ArtemKyslicyn/homebrew-agent07/releases/download/v#{version}/Agent07-#{version}.zip"
  name "Agent07"
  desc "Local AI Agent Orchestrator — DAG pipelines with GGUF models + OpenRouter"
  homepage "https://github.com/ArtemKyslicyn/homebrew-agent07"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Agent07.app"

  zap trash: [
    "~/Library/Application Support/Agent07",
    "~/Library/Caches/Agent07",
    "~/Library/Preferences/app.ddd.Agent07.plist",
  ]

  caveats <<~EOS
    Agent07 requires Apple Silicon (M1+) and macOS 14+.

    Features:
    - Local GGUF model inference (LLM.swift)
    - OpenRouter free cloud models (no payment needed)
    - DAG-based agent pipeline editor
    - 20+ code tools (Read, Edit, Bash, Grep, Glob...)
    - MCP server support
    - VS Code extension hosting

    First run:
    1. Download a model: Settings → Downloaded Models → Qwen3 0.6B
    2. Or setup free cloud: Settings → Free Mode → OpenRouter

    For local inference, download models to ~/Documents/
  EOS
end
