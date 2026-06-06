cask "agent07" do
  version "0.9.0-alpha.1"
  sha256 "0ed4ee6ddd850a0601eb385d91edb06de51fd729df042fe6272cf49773d6381c"

  # Pre-built binary is hosted on THIS public tap's own Releases, so `brew
  # install` needs no token even though the app's source repo is private.
  url "https://github.com/ArtemKyslicyn/homebrew-agent07/releases/download/v#{version}/Agent07-#{version}.zip"
  name "Agent07"
  desc "Local AI Agent Orchestrator — DAG pipelines with GGUF models + OpenRouter"
  homepage "https://github.com/ArtemKyslicyn/homebrew-agent07"

  livecheck do
    url :url
    strategy :github_releases
  end

  # Alpha is ad-hoc signed (no Developer ID / notarization yet). Homebrew can't
  # disable quarantine, so the app is quarantined on install — the caveats below
  # tell the user how to clear it (xattr / right-click Open).
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Agent07.app"

  zap trash: [
    "~/Library/Application Support/Agent07",
    "~/Library/Caches/Agent07",
    "~/Library/Preferences/app.ddd.Agent07Community.plist",
  ]

  caveats <<~EOS
    Agent07 #{version} — early ALPHA. Apple Silicon (M1+) and macOS 15.2+ required.

    This alpha is ad-hoc signed (not notarized). If macOS refuses to open it:
      xattr -dr com.apple.quarantine "/Applications/Agent07.app"
    or right-click the app → Open → Open.

    Included in this build:
    - Local GGUF model inference (LLM.swift)
    - OpenRouter free cloud models (no payment needed)
    - DAG-based agent pipeline editor
    - 20+ code tools (Read, Edit, Bash, Grep, Glob...)
    - MCP server support

    NOT in this alpha (work in progress): image generation (Flux),
    image gallery, the Sirin avatar, and the Kanban board.

    First run:
    1. Download a model: Settings → Downloaded Models → Qwen3 0.6B
    2. Or set up free cloud: Settings → Free Mode → OpenRouter

    For local inference, download models to ~/Documents/
  EOS
end
