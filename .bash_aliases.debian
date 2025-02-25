# Alias definitions.
#

# some more ls aliases
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'
alias l='eza'
alias ls='eza --icons'
alias ll='eza -l --icons'
alias la='eza -la --icons'
alias fd='fdfind'
alias find='fdfind'
alias grep='rg'
alias cat='bat'
alias du='duf'
alias cd='z'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='eza --icons --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto'

  alias grep='rg --color=auto'
  alias fgrep='rg --color=auto'
  alias egrep='rg --color=auto'
fi
