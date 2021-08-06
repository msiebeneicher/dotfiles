# zsh config order is .zshenv → [.zprofile if login] → [.zshrc if interactive] → [.zlogin if login] → [.zlogout sometimes]

eval "$(/opt/homebrew/bin/brew shellenv)"
