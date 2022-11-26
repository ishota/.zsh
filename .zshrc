# zsh関連のファイルの格納先を変更
ZDOTDIR=~/.zsh

# シェル関数
# 補完機能を利用
autoload -Uz compinit
compinit -d ~/.zsh/.zcompdump
# 色を利用
autoload -Uz colors
colors

# ヒストリ設定(.zsh_history)
HISTSIZE=10000
SAVEHIST=10000

# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# プロンプト
PROMPT='
[%B%F{red}%n@%m%f%b:%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f
%F{yellow}$%f '

# デフォルトのエディター設定
export EDITOR=vim

# エイリアス
alias ll='ls -alF'
