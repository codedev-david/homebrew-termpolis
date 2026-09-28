# Homebrew Tap for Termpolis

Official Homebrew Cask tap for [Termpolis](https://termpolis.com/) — the desktop terminal where Claude Code, Codex and Gemini CLI share one persistent memory.

## Install

```sh
brew tap codedev-david/termpolis
brew install --cask termpolis
```

Or in one line:

```sh
brew install --cask codedev-david/termpolis/termpolis
```

## Update

Termpolis updates itself in place, so the cask is marked `auto_updates` and a plain `brew upgrade` leaves it alone. To have Homebrew reinstall it anyway:

```sh
brew update
brew upgrade --cask --greedy termpolis
```

## Uninstall

```sh
brew uninstall --cask termpolis
```

To also remove app data and preferences:

```sh
brew uninstall --zap --cask termpolis
```

## Supported architectures

The cask serves the right binary automatically:

| Mac        | Artifact                          |
|------------|-----------------------------------|
| Apple Silicon (M1/M2/M3/M4) | `Termpolis-x.y.z-arm64.dmg` |
| Intel      | `Termpolis-x.y.z.dmg`             |

Both `.dmg`s are notarized and code-signed with a Developer ID Application certificate.

## Versioning

The cask tracks the latest published [Termpolis release](https://github.com/codedev-david/termpolis/releases) automatically. `.github/workflows/update-cask.yml` checks for a new release every 30 minutes (drafts and prereleases are never picked up), rewrites the version and both sha256s, and only pushes after the new cask passes `brew style`, `brew audit --online`, a checksum-verified fetch of both DMGs, and a real install and uninstall on a macOS runner. To bump immediately: `gh workflow run update-cask.yml -R codedev-david/homebrew-termpolis`.

## Issues

For app bugs, open an issue at [codedev-david/termpolis](https://github.com/codedev-david/termpolis/issues).

For tap-specific issues (cask installs the wrong file, sha256 mismatch, etc.), open one [here](https://github.com/codedev-david/homebrew-termpolis/issues).

## License

The cask formula in this repository is released under the BSD 2-Clause License (the same license Homebrew itself uses for casks). Termpolis itself is Apache 2.0 — see the [main repo](https://github.com/codedev-david/termpolis/blob/main/LICENSE).
