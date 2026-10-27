# Moved: use roundrect/tap

Shorty's cask now lives in RoundRect's single tap, [roundrect/homebrew-tap](https://github.com/roundrect/homebrew-tap), with
every RoundRect app:

```sh
brew tap roundrect/tap
brew trust roundrect/tap
brew install --cask roundrect/tap/shorty
```

An install from this tap moves there on its own at the next `brew update` (`tap_migrations.json`). Then
`brew untap roundrect/shorty`.
