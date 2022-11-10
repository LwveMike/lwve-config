# Add aliases for kitty
if [ "$TERM" = 'xterm-kitty' ]; then
	alias icat='kitty +kitten icat'
fi

# Add alias for tmux
if [ command -v tmux &> /dev/null ]; then
	alias tmux='tmux -u'
fi
