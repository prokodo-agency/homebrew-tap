<p align="center">
  <a href="https://www.prokodo.com" target="_blank" rel="noopener noreferrer">
    <img src="https://cdn.prokodo.com/prokodo_logo_1a3bb7867c/prokodo_logo_1a3bb7867c.webp" alt="prokodo – Digital innovation & automation" height="58" />
  </a>
</p>

<h1 align="center">prokodo – Homebrew Tap</h1>
<h2 align="center">Official Homebrew Tap for prokodo tools</h2>

<p align="center">
  <a href="https://github.com/prokodo-agency/homebrew-tap/blob/main/Formula/prokodo-cli.rb" target="_blank" rel="noopener noreferrer">
    <img alt="Formula" src="https://img.shields.io/badge/formula-prokodo--cli-orange.svg" />
  </a>
  <a href="https://github.com/prokodo-agency/cli/releases" target="_blank" rel="noopener noreferrer">
    <img alt="Latest Release" src="https://img.shields.io/github/v/release/prokodo-agency/cli?label=latest&color=brightgreen" />
  </a>
  <a href="https://github.com/prokodo-agency/homebrew-tap/graphs/commit-activity" target="_blank" rel="noopener noreferrer">
    <img alt="Maintained" src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" />
  </a>
  <a href="https://github.com/prokodo-agency/homebrew-tap/blob/main/LICENSE" target="_blank" rel="noopener noreferrer">
    <img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-green.svg" />
  </a>
</p>

> Official Homebrew tap for [prokodo](https://www.prokodo.com) developer tooling — managed automatically by the [prokodo-agency/cli](https://github.com/prokodo-agency/cli) release pipeline.

---

### 🏠 Resources

- 🌐 [prokodo Website](https://www.prokodo.com)
- 📦 [CLI Source (prokodo-agency/cli)](https://github.com/prokodo-agency/cli)
- 📋 [CLI Releases](https://github.com/prokodo-agency/cli/releases)
- 📖 [CLI Documentation](https://github.com/prokodo-agency/cli#readme)

---

## Formulas

| Formula | Description | Source |
|---|---|---|
| `prokodo-cli` | prokodo developer CLI — verify, inspect and manage your prokodo services | [prokodo-agency/cli](https://github.com/prokodo-agency/cli) |

---

## Install

### Requirements

| Requirement | Version |
|---|---|
| macOS | 12 Monterey or later |
| [Homebrew](https://brew.sh) | latest |
| Node.js | ≥ 22 (installed automatically as a dependency) |

### Quick install

```bash
# 1. Add the prokodo tap (one-time)
brew tap prokodo-agency/tap

# 2. Install the CLI
brew install prokodo-cli

# 3. Verify
prokodo --version
prokodo doctor
```

### Update

```bash
brew update && brew upgrade prokodo-cli
```

### Uninstall

```bash
brew uninstall prokodo-cli
brew untap prokodo-agency/tap  # optional — removes the tap entirely
```

---

## Usage

```bash
prokodo --help
prokodo --version

# Authenticate with your prokodo account
prokodo auth login

# Initialise a project
prokodo init

# Verify a deployment
prokodo verify --project <id>

# Check credit balance
prokodo credits

# Diagnose your local setup
prokodo doctor
```

Full command reference: [github.com/prokodo-agency/cli#commands](https://github.com/prokodo-agency/cli#commands)

---

## Alternative installation methods

If you prefer not to use Homebrew, the CLI is also available via:

**GitHub Packages (npm)**
```bash
npm config set @prokodo-agency:registry https://npm.pkg.github.com
npm install -g @prokodo-agency/cli
```

**Docker**
```bash
docker run --rm ghcr.io/prokodo-agency/prokodo-cli --version
```

---

## How this tap works

This repository is maintained **automatically**. On every release of [prokodo-agency/cli](https://github.com/prokodo-agency/cli):

1. The release pipeline builds and publishes the CLI
2. The tarball is attached to the [GitHub Release](https://github.com/prokodo-agency/cli/releases) as a public asset
3. A bot computes the sha256 of the tarball and opens a commit here updating `url`, `sha256`, and `version` in the formula

**Do not edit formula files manually** — your changes will be overwritten on the next release.

If you spot an issue with the formula, please open an issue in [prokodo-agency/cli](https://github.com/prokodo-agency/cli/issues).

---

## License

MIT © [prokodo agency](https://www.prokodo.com)
