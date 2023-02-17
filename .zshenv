# zsh config order is .zshenv → [.zprofile if login] → [.zshrc if interactive] → [.zlogin if login] → [.zlogout sometimes]

export GOPATH="$HOME/go"
export DOCKER_DEFAULT_PLATFORM="linux/amd64"

if GH_ENTERPRISE_TOKEN="$(gh auth token --hostname github.vodafone.com)" >/dev/null 2>&1; then
    export GH_ENTERPRISE_TOKEN
fi

if GITHUB_TOKEN="$(gh auth token --hostname github.com)" >/dev/null 2>&1; then
    export GITHUB_TOKEN
fi
