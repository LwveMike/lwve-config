# Configure bat
configureBat()
{
  if command -v bat &> /dev/null
  then
    return 0
  fi

  if command -v batcat &> /dev/null
  then
    alias bat='batcat'
  else
    echo "aliases.zsh:$LINENO | No batcat command found"
  fi
}

# Add aliases for kitty
if [ "$TERM" = 'xterm-kitty' ]; then
	alias icat='kitty +kitten icat'
	alias kcopy='kitty +kitten clipboard'
fi

# Add alias for tmux
if command -v tmux &> /dev/null 
then
  alias tmux='tmux -u'
fi

# git aliases
alias clean_besides='clean -fdxe'

configureBat
