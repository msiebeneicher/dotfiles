# zsh config order is .zshenv → [.zprofile if login] → [.zshrc if interactive] → [.zlogin if login] → [.zlogout sometimes]

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# extend PATH variable
export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="${HOMEBREW_PREFIX}/opt/coreutils/libexec/gnubin:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/findutils/libexec/gnubin:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/grep/libexec/gnubin:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/make/libexec/gnubin:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/util-linux/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/marc.siebeneicher/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    1password
    aws
    common-aliases
    docker
    git
    helm
    kubectl
    macos
    task
    zsh-fzf-history-search
)

source ${ZSH}/oh-my-zsh.sh

# zsh-autosuggestions
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
		#forward-char
		end-of-line
		vi-forward-char
		vi-end-of-line
		vi-add-eol
	)

source ${HOMEBREW_PREFIX}/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias admin-xattr='sudo xattr -r -d com.apple.quarantine /Applications/massCode.app'
alias git-cdroot='pushd $(git root)'
alias git-clean="git fetch -p && git branch -vv | grep gone | cut -d' ' -f 3 | grep . | xargs git branch -D"
alias gh-dash="GH_HOST=github.vodafone.com gh dash"
alias gh-issues="GH_HOST=github.vodafone.com gh search issues --owner VFDE-SOL --state open --limit 100"
alias gh-prs="GH_HOST=github.vodafone.com gh search prs --owner VFDE-SOL --state open --limit 100"
alias pip="/opt/homebrew/bin/pip3"
alias tf-delete-caches='find . -type d -name ".terraform" -prune -exec rm -rf {} \;'
alias tf-find-caches='find . -type d -name ".terraform"'
alias tg-delete-caches='find . -type d -name ".terragrunt-cache" -prune -exec rm -rf {} \;'
alias tg-find-caches='find . -type d -name ".terragrunt-cache"'
alias tg-providers='terragrunt providers lock -platform=linux_arm64 -platform=linux_amd64 -platform=darwin_amd64 -platform=darwin_arm64 -platform=windows_amd64'

# overwrite of common-aliases.plugin.zsh
alias ll='ls -lAFh'   #long list,show almost all,show type,human readable

# autocompletions
# source <(fly completion --shell zsh)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# interal vf settings
[ ! -f ~/.vf_sol ] || source ~/.vf_sol
