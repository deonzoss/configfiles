#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias typer='cd ~/Documents/projects/typer;'
alias ls='ls --color=auto'
windows() {
  VBoxSDL --startvm "Windows 10" &
  disown
}
sierra() {
  VBoxManage startvm "Mac OS Sierra" --type gui
}
alias ll='ls -l -a --color=auto'
alias top='htop'
alias putlocker='/home/deon/Documents/projects/putlocker/putlocker.sh'
export PS1="\[\e[0;34m\][\w]\[\e[m\]\$ "
export EDITOR="vim"
