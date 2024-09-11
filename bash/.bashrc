#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'
alias l='ls -lv'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# update mirror-list using reflector
alias updMirror="sudo reflector --verbose --connection-timeout 10 --download-timeout 10 --latest 10 --country India --sort rate --protocol https --save /etc/pacman.d/mirrorlist"

eval "$(starship init bash)"

# alias to automate to start SSH-Agent and key addition
alias ssh_config='eval "$(ssh-agent  -s)" && ssh-add ~/.ssh/Remote_repos/id_ed25519'

