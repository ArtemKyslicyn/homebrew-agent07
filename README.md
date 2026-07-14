# Agent07 — Community Edition

**Your AI coding agent that runs on _your_ Mac — with free cloud models out of the box.**

Agent07 is a native macOS app that turns local GGUF models and free cloud LLMs into a real agentic coding assistant: it reads your files, runs commands, edits code, and chains agents together on a visual canvas. No subscription. No per-token bill. No data leaving your machine unless you say so.

```bash
brew tap ArtemKyslicyn/agent07
brew install --cask agent07
```

> Think **Cursor + n8n + Ollama** in one native app — Apple-Silicon-first, offline-capable, and free to start.

![Platform](https://img.shields.io/badge/macOS-15.2%2B-blue) ![Arch](https://img.shields.io/badge/Apple%20Silicon-M1%2B-orange) ![Price](https://img.shields.io/badge/price-free-brightgreen) ![Install](https://img.shields.io/badge/install-keyless%20brew-success) ![Stage](https://img.shields.io/badge/stage-alpha-yellow)

---

## Why Agent07

| | |
|---|---|
| 🖥️ **Runs locally** | 45+ GGUF models via `llama.cpp` — Qwen3, DeepSeek Coder, Llama, Mistral. No API key, no cloud, no leak. |
| ☁️ **Free cloud, no card** | OpenRouter free tier (Qwen3, Llama, Nemotron…) built in. Get a free key, paste it, go. |
| 🔒 **Offline-first & private** | Full agentic loop works with zero network. Your code stays on your Mac. |
| 🧰 **Real code tools** | 20+ Claude-Code-style tools — Read, Edit, Bash, Grep, Glob, Patch, Git — so the agent actually *does* things. |
| 🔗 **Visual DAG pipelines** | Drag-and-drop agent nodes, wire them up, run the graph. Writer→Reviewer, Test-First, Refactor. |
| 🔌 **MCP support** | Connect Model Context Protocol servers — thousands of external tools, Serena LSP, and more. |
| ⚡ **Apple Silicon native** | SwiftUI + Metal, built for M1/M2/M3/M4. Not an Electron wrapper. |

## What's inside this build

The Community alpha ships a complete, usable agentic coding core:

- **Local GGUF inference** — download a model in-app, run it fully offline (LLM.swift / llama.cpp)
- **Free cloud models** — OpenRouter free tier, no payment required
- **Visual DAG pipeline editor** — compose and run multi-agent workflows
- **20+ agentic code tools** — file read/edit, shell, search, git
- **MCP server support** — plug in external tool servers
- **Project indexing** — fast local code search (FTS5 BM25 + semantic)
- **Permission controls** — allow/deny rules for what agents may run

> **Not in this alpha (coming soon):** image generation (Flux), image gallery, the **Sirin** 3D AI companion, and the per-project **Kanban board**. Follow [Releases](https://github.com/ArtemKyslicyn/homebrew-agent07/releases) to get them as they land.

## Install

```bash
# 1. Add the tap
brew tap ArtemKyslicyn/agent07

# 2. Install the app (keyless — pre-built binary, no GitHub token needed)
brew install --cask agent07
```

**Update:**

```bash
brew upgrade --cask agent07
```

**Uninstall (removes app + local data):**

```bash
brew uninstall --cask agent07
brew uninstall --zap --cask agent07   # also wipes ~/Library data
```

### First launch — clearing quarantine

This alpha is **ad-hoc signed** (not yet notarized), so macOS quarantines it on install. If the app refuses to open:

```bash
xattr -dr com.apple.quarantine "/Applications/Agent07.app"
```

…or right-click **Agent07.app → Open → Open**. You only need to do this once.

## Quick start

1. **Launch Agent07** and open a project folder.
2. **Pick your engine:**
   - **Local:** Settings → Downloaded Models → grab *Qwen3 0.6B* (tiny, ~0.5 GB) to try it instantly.
   - **Free cloud:** Settings → Free Mode → OpenRouter → get a free key at [openrouter.ai/keys](https://openrouter.ai/keys).
3. **Chat, or build a pipeline** on the canvas and run it.

For local inference, save models under `~/Documents/`.

## Requirements

- **macOS 15.2+** (Sequoia)
- **Apple Silicon** — M1, M2, M3, or M4
- **8 GB+ RAM** recommended (more for larger local models)

## Editions

This tap installs the **Community Edition** (bundle `app.ddd.Agent07Community`) — the open, free-to-use build of Agent07. The full product adds the Sirin AI companion, image generation, and team/Kanban orchestration.

## Links

- 🌐 [Homebrew Tap](https://github.com/ArtemKyslicyn/homebrew-agent07) — this repo
- 📝 [Release Notes](https://github.com/ArtemKyslicyn/homebrew-agent07/releases)
- 🐛 [Report an issue](https://github.com/ArtemKyslicyn/homebrew-agent07/issues)

---

<sub>Agent07 Community Edition · alpha · Apple Silicon · made for macOS</sub>
