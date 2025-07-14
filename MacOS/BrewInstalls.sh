brew update

casks=(
  iterm2
  visual-studio-code
  google-chrome
  firefox
  spotify
  vlc
  docker
  calibre
  brave-browser
)

for cask in "${casks[@]}"; do
  brew install --cask "$cask" || echo "Failed to install $cask"
done

formulae=(
  bash
  git
)

for formula in "${formulae[@]}"; do
  brew install "$formula" || echo "Failed to install $formula"
done