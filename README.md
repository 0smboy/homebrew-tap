# 0smboy / homebrew-tap

Homebrew tap for apps maintained by [0smboy](https://github.com/0smboy).

## Available casks

| Cask | Description |
| --- | --- |
| [`photoboothpro`](Casks/photoboothpro.rb) | macOS photo booth with real-time filters, screen flash, video recording, and AI style transfer. Source: [PhotoBoothPro](https://github.com/0smboy/PhotoBoothPro) |

## Install

```bash
brew install --cask 0smboy/tap/photoboothpro
```

(The shorter `brew install 0smboy/tap/photoboothpro` also works — Homebrew auto-routes to the cask.)

## Uninstall

```bash
brew uninstall --cask photoboothpro
brew untap 0smboy/tap
```

## Updating a cask

1. Bump the version string in the relevant `.rb` file.
2. `shasum -a 256 <new-asset>.zip` → paste into `sha256`.
3. Commit, push.

## Distribution note

The binaries are **ad-hoc signed**, not Developer-ID signed. macOS Gatekeeper
will gate the first launch. Either right-click → Open, or:

```bash
xattr -cr /Applications/PhotoBoothPro.app
```
