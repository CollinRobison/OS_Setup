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
  # Loop Window Manager -  https://github.com/MrKai77/Loop?tab=readme-ov-file#features
  loop
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