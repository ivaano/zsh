# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias ls='ls --color'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)


if [[ `uname` == 'Linux' ]]
then
    plugins=(git vi-mode colorize)
    source $ZSH/oh-my-zsh.sh
    export LINUX=1
    export GNU_USERLAND=1
    export PATH="/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin"
    export MANPATH="/opt/local/share/man:/usr/local/man:$MANPATH"
else
        export LINUX=
fi

if [[ `uname` == 'Darwin' ]]
then
    plugins=(git vi-mode osx colorize)
    source $ZSH/oh-my-zsh.sh
    export PATH="/opt/local/libexec/gnubin/:/opt/local/bin:/opt/local/sbin:/opt/local/lib/mysql55/bin/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin"
    export MANPATH="/opt/local/share/man:/usr/local/man:$MANPATH"
    export OSX=1
    # Detect Macports GNU userland installation
    if [[ -e /opt/local/libexec/gnubin ]]
    then
        export GNU_USERLAND=1
    fi
else
    export OSX=
fi


if [[ `uname` == 'Linux' ]]
then
    plugins=(git vi-mode colorize)
        export LINUX=1
        export GNU_USERLAND=1
    export PATH="/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin"
    export MANPATH="/opt/local/share/man:/usr/local/man:$MANPATH"
else
        export LINUX=
fi

if [[ `uname` == 'Darwin' ]]
then
    plugins=(git vi-mode osx colorize)
    export PATH="/opt/local/libexec/gnubin/:/opt/local/bin:/opt/local/sbin:/opt/local/lib/mysql55/bin/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin"
    export MANPATH="/opt/local/share/man:/usr/local/man:$MANPATH"
        export OSX=1
else
        export OSX=
fi

# Detect Macports GNU userland installation
if [[ "$OSX" == "1" ]]
then
    if [[ -e /opt/local/libexec/gnubin ]]
    then
        export GNU_USERLAND=1
    fi
fi

# User configuration


# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias ls='ls --color'

# Base16 Shell
BASE16_SCHEME="monokai"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL
