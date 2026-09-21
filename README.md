# Homebrew tap for Shorty

[Shorty](https://github.com/johnoscott/shorty) manages macOS menu keyboard shortcuts and app
hotkeys from one file, with a menu bar editor and a `shorty` command.

```sh
brew install --cask johnoscott/shorty/shorty
```

Requires macOS 15 (Sequoia) or later. The cask installs `Shorty.app` and links the `shorty`
command-line tool.

## Releasing a new version

In the Shorty repository: `NOTARY_PROFILE=<profile> make release VERSION=x.y.z`, attach
`dist/Shorty-x.y.z.dmg` to GitHub release `vx.y.z`, then update `version` and `sha256` in
`Casks/shorty.rb` here (or `brew bump-cask-pr --version x.y.z johnoscott/shorty/shorty`).
