# homebrew-tap

Homebrew tap for [AskDocs](https://github.com/AayushGokhale2005/askdocs).

## Install

```bash
brew tap AayushGokhale2005/tap
brew install askdocs
```

## Publish updates

1. Bump `VERSION` in the main repo's `CMakeLists.txt` and tag a release:
   ```bash
   git tag v0.2.1
   git push origin v0.2.1
   ```
2. Update the tarball checksum in `Formula/askdocs.rb`:
   ```bash
   curl -L https://github.com/AayushGokhale2005/askdocs/archive/refs/tags/v0.2.1.tar.gz | shasum -a 256
   ```
3. Commit and push this tap repo.

## First-time setup

Create a public GitHub repo named `homebrew-tap` under the [AskDocs](https://github.com/AskDocs) org, then push this directory:

```bash
cd homebrew-tap
git init
git add Formula/askdocs.rb README.md
git commit -m "Add askdocs formula"
git branch -M main
git remote add origin git@github.com:AskDocs/homebrew-tap.git
git push -u origin main
```

Users tap it as `askdocs/tap` (Homebrew strips the `homebrew-` prefix).
