# Homebrew Tap

Personal Homebrew tap for my macOS applications.

## Installation

```bash
brew tap LZhenHong/tap
```

## Available Casks

### FinderSnap

Automatically resize and position new Finder windows on macOS. Requires macOS Sonoma or later.

```bash
brew install --cask findersnap
```

For more information, visit [FinderSnap on GitHub](https://github.com/LZhenHong/FinderSnap).

### Americano

Prevent your Mac from sleeping. Requires macOS Sonoma or later.

```bash
brew install --cask americano
```

For more information, visit [Americano on GitHub](https://github.com/LZhenHong/Americano).

### VibeDrafts

Create, manage, and send text drafts to the focused macOS app. Requires macOS Sequoia or later.

```bash
brew install --cask vibedrafts
```

For more information, visit [VibeDrafts on GitHub](https://github.com/LZhenHong/VibeDrafts).

### VirtualLocation

Set a virtual location on a connected iPhone or iPad from your Mac. Requires macOS Tahoe or later.

```bash
brew install --cask virtual-location
```

The cask and the app's built-in Sparkle updater install the same signed, notarized DMG. This repository's `virtual-location-updates` release also carries a ZIP of the same app for direct download.

To update through Homebrew, restore all locations and quit the app, then run:

```bash
brew update
brew upgrade --cask --greedy virtual-location
```

Before uninstalling, also disable and remove the "This Mac" component in the app's settings if you enabled it. `brew uninstall --cask virtual-location` removes the app and preserves its user data.
