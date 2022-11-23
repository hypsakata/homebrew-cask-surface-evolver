# homebrew-cask-surface-evolver

An unofficial [homebrew](https://brew.sh/) cask for Ken Brakke's [Surface Evolver](https://facstaff.susqu.edu/brakke/evolver/evolver.html)

## Install

```bash
brew tap hypsakata/cask-surface-evolver
brew install --cask surface-evolver
```
The `fe` and `cmd` files that come with Surface Evolver are located in $(brew --prefix)/share/surface-evolver.

## Usage

Execute in a terminal application as the following:
```bash
evolver
```

If you want to load a sample cmd file (e.g., stl.cmd) from Surface Evolver, you can set the environment variable beforehand or run like the following:
```bash
EVOLVERPATH=$(brew --prefix)/share/surface-evolver evolver
```


> **Note**
> Since Surface Evolver is not certified by Apple, the gatekeeper, a security application in macOS, stops it when it first runs. So, allowing it to execute from the security section in System Preferences is necessary.

## Uninstall

```bash
brew uninstall surface-evolver
brew untap hypsakata/cask-surface-evolver
```
