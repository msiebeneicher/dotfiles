# zsh config order is .zshenv → [.zprofile if login] → [.zshrc if interactive] → [.zlogin if login] → [.zlogout sometimes]

# extend PATH varialbe
export PATH="$HOME/bin:/usr/local/bin:$PATH"

export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"
