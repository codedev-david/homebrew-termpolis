# Homebrew Tap for Termpolis

Official Homebrew Cask tap for [Termpolis](https://termpolis.com/) — the **Secure AI-Assisted Development** terminal where Claude, Codex, Gemini, and Qwen work together as a team.

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

```sh
brew update
brew upgrade --cask termpolis
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

The version on this tap tracks the latest stable [Termpolis release](https://github.com/codedev-david/termpolis/releases). Each tag push to the main repo triggers an automated PR against this tap (see `.github/workflows/update-cask.yml`).

## Issues

For app bugs, open an issue at [codedev-david/termpolis](https://github.com/codedev-david/termpolis/issues).

For tap-specific issues (cask installs the wrong file, sha256 mismatch, etc.), open one [here](https://github.com/codedev-david/homebrew-termpolis/issues).

## License

The cask formula in this repository is released under the BSD 2-Clause License (the same license Homebrew itself uses for casks). Termpolis itself is Apache 2.0 — see the [main repo](https://github.com/codedev-david/termpolis/blob/main/LICENSE).
