#!/bin/bash
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###
# If you come from bash you might have to change your $PATH.

#Flatpak path for installed apps I think
export FLATPAK=/home/rory/.var/app/
#export BIN=/home/rory/.bin/
export HOMELOCAL=/home/rory/.local
export HOMEBIN=/home/rory/.local/bin
export DOOM=~/.config/emacs/bin
export NVIMLAZY=~/.local/share/nvim/lazy
export CONDA=/home/rory/miniconda3/bin
export VOLTABIN=/home/rory/.volta/bin

#PATH=/home/rory/.local/share/apx/distrobox/bin:$BIN:$FLATPAK:$DOOM:$HOMEBIN:$NVIMLAZY:$PATH
PATH=/home/rory/.local/share/apx/distrobox/bin:$HOMELOCAL:$FLATPAK:$HOMEBIN:$NVIMLAZY:$CONDA:$VOLTABIN:$PATH

## sourcing plugins and themes
source  ~/.zshrc-personal
source ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

export ZSH="/home/$USER/.oh-my-zsh"

#installation via paru -S oh-my-zsh-git
#export ZSH=/usr/share/oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# if you installed the package oh-my-zsh-powerline-theme-git then you type here "powerline" as zsh theme
ZSH_THEME="powerline10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# ZSH_THEME_RANDOM_IGNORED=(pygmalion tjkirch_mod)

# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
 DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
 zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
 #zstyle ':omz:update' frequency 7
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
#ZSH_CUSTOM=/home/$USER/.oh-my-zsh/custom

#create a file called .zshrc-personal and put all your personal aliases
#in there. They will not be overwritten by skel.

#[[ -f ~/.zshrc-personal ]] &&  ~/.zshrc-personal

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( zsh-autosuggestions  autojump flatpak zsh-syntax-highlighting zsh-interactive-cd fast-syntax-highlighting rust toolbox gh colored-man-pages zbell thefuck fzf systemd git  fzf-tab zsh-cargo-completion  )

if [ -f $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

# User configuration

 export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

####   ARCOLINUX SETTINGS   ####
export PAGER='most'

setopt GLOB_DOTS
#share commands between terminal instances or not
#unsetopt SHARE_HISTORY
setopt SHARE_HISTORY

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## autojump sourcing
 [[ -s /home/rory/.autojump/etc/profile.d/autojump.sh ]] && source /home/rory/.autojump/etc/profile.d/autojump.sh
 
# zsh cargo completions
fpath+=~/.oh-my-zsh/.zfunc
#exec $HOME/:./apx-completion.sh

# no idea what the line under this line does.
	autoload -U compinit && compinit -u


# clearing up the screen
clear
fastfetch
