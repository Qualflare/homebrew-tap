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

| Cask | Description |
|------|-------------|
| `qf` | CLI for uploading test results to Qualflare |
| `qualflare-go` | Native `go test` reporter for Qualflare |
| `qualflare-maestro` | Native Maestro reporter for Qualflare |

## Casks

### qf

The `qf` CLI parses test results from 27 frameworks and 4 generic formats (JUnit XML, CTRF, Allure and Qualflare JSON) and uploads them to your [Qualflare](https://qualflare.com) project.

```bash
qf login myapp                  # saves a project access token (qfp_…) under the name "myapp"; reads QF_TOKEN or prompts
qf myapp collect results.xml    # uploads the results; the format is auto-detected
qf version
```

Docs: [docs.qualflare.com/docs/cli](https://docs.qualflare.com/docs/cli)

### qualflare-go and qualflare-maestro

Reporters that run `go test` or `maestro test` and write a `qualflare-results` folder, which `qf <name> collect` uploads. Setup: [Go](https://docs.qualflare.com/docs/reporters/go) and [Maestro](https://docs.qualflare.com/docs/reporters/maestro) in the Qualflare docs.

## Updates

The casks are updated automatically by goreleaser on each release tag of the tool.

## License

Apache-2.0 — see [LICENSE](./LICENSE).
