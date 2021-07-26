# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
# Install gnu command lines and man
export LANG=zh_CN.UTF-8
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$(brew --prefix llvm)/bin:$PATH
export PATH=$HOME/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster-fcamblor"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git autojump zsh-syntax-highlighting zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# initialize for autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_NDK=$ANDROID_HOME/ndk/22.0.7026061
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/ndk/22.0.7026061:$ANDROID_HOME/build-tools/30.0.3
# export PATH=$HOME/bin/CloudSparrow/fastboot/mac:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HOME/.sdk/tools/adb/mac:$PATH
# doom binary
export PATH=$PATH:~/.emacs.d/bin/

# initialize for flutter
export FLUTTER_HOME=$HOME/sources/flutter
export PATH=$PATH:$FLUTTER_HOME/bin

EMACS_HOME=/Applications/Emacs.app/Contents/MacOS/
export EDITOR="vim"

# Emacs for jiri of fuchsia OS
# export FUCHSIA_HOME=$HOME/sources/fuchsia
# export PATH=$PATH:$FUCHSIA_HOME/.jiri_root/bin

# initialize for golang
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile

export PYENV_ROOT=${HOME}/.pyenv
export PATH=${PYENV_ROOT}/bin:${PATH}
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH=$(pyenv root)/shims:$PATH
export PYTHONPATH=~/Backup/

alias mux='/usr/local/bin/tmuxinator'

test -z "$TMUX" && (tmux attach || tmux new-session)

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
CFLAGS="-I$(brew --prefix openssl)/include"
LDFLAGS="-L$(brew --prefix openssl)/lib"

export CPPFLAGS="-I$(brew --prefix binutils)/include"
export LDFLAGS="-L$(brew --prefix binutils)/lib"
export PATH="$(brew --prefix binutils)/bin:${PATH}"

export PATH="$(brew --prefix emacs-plus)/bin:$PATH"
export PATH="~/.emacs.d/bin:$PATH"

if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
    alias clear='vterm_printf "51;Evterm-clear-scrollback";tput clear'
fi
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
