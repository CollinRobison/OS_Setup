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
  # Macbook Dynamic Island - https://github.com/TheBoredTeam/boring.notch/
  TheBoredTeam/boring-notch/boring-notch
  # Non-Apple Mouse Utility - https://github.com/noah-nuebling/mac-mouse-fix
  mac-mouse-fix
  # Monitor Control - External Monitor Utility - http://github.com/MonitorControl/MonitorControl
  monitorcontrol
)

for cask in "${casks[@]}"; do
  brew install --cask "$cask" || echo "Failed to install $cask"
done

formulae=(
  bash
  git
  copilot-cli
  anomalyco/tap/opencode
)

for formula in "${formulae[@]}"; do
  brew install "$formula" || echo "Failed to install $formula"
done