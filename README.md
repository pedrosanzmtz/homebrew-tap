# pedrosanzmtz/homebrew-tap

Homebrew tap for [kubeloupe](https://github.com/pedrosanzmtz/kubeloupe), a
Kubernetes IDE written in Rust.

```sh
brew install --cask pedrosanzmtz/tap/kubeloupe   # desktop app (universal .dmg)
brew install pedrosanzmtz/tap/kubeloupe-cli      # CLI, with bash/zsh/fish completions
```

The CLI formula also works on Linux x86_64 (Homebrew on Linux).

## The app is not signed yet

The first time you open kubeloupe, macOS blocks it because it is not signed or
notarized. On macOS 15 and later: try to open it once, then go to
**System Settings > Privacy & Security**, scroll down to the message about
kubeloupe and click **Open Anyway**. (On older macOS, right-click the app and
choose Open.)

## Updates

The app updates itself (the cask sets `auto_updates true`, so `brew upgrade`
leaves it alone; `brew upgrade --greedy` reinstalls it). The CLI updates with
`brew upgrade kubeloupe-cli`.

## How this tap is maintained

Don't edit the version or `sha256` lines by hand: the `homebrew-tap` job of
kubeloupe's
[release workflow](https://github.com/pedrosanzmtz/kubeloupe/blob/main/.github/workflows/release.yml)
writes them from each release's `SHA256SUMS` and pushes here. Until the first
release, the files hold placeholder checksums (all zeros) and can't be
installed.

CI (`.github/workflows/ci.yml`) runs `brew style` and `brew audit` on the cask
and the formula.

`brew uninstall --zap --cask kubeloupe` also removes the app's settings and
pasted kubeconfigs from `~/Library/Application Support/com.kubeloupe.app`.
