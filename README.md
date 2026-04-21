# Homebrew tap for Qualflare

This is the official [Homebrew](https://brew.sh) tap for Qualflare tools.

## Install

```bash
brew install qualflare/tap/qf
```

Or tap first, then install by short name:

```bash
brew tap Qualflare/tap
brew install qf
```

## What's in this tap

| Formula | Description |
|---------|-------------|
| `qf` | CLI for uploading test results to Qualflare |

## Formulas

### qf

The `qf` CLI parses test results from 19+ frameworks (Jest, pytest, Go testing, Playwright, Cypress, JUnit, and more) and uploads them to your [Qualflare](https://qualflare.com) dashboard.

```bash
qf upload results.xml
qf version
qf --help
```

Full docs: [github.com/Qualflare/qualflare-cli](https://github.com/Qualflare/qualflare-cli)

## Automating formula updates

Formula files in this tap are currently updated manually after each CLI release. To automate this via goreleaser:

1. Create a GitHub personal access token (PAT) with `contents:write` permission scoped to this repository.
2. Add it as a secret named `HOMEBREW_TAP_TOKEN` in the `qualflare-cli` repository settings.
3. Inject it in `.github/workflows/release.yml` alongside `GITHUB_TOKEN`.

Once wired up, goreleaser will regenerate `Formula/qf.rb` automatically on every new CLI release tag.

## License

Apache-2.0 — see [LICENSE](./LICENSE).
