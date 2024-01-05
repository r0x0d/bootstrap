export GPG_TTY=$(tty)
alias battery='upower -i $(upower -e | grep BAT) | grep --color=never -E "state|to\ full|to\ empty|percentage"'
export PATH="$PWD/.npm-global/bin:$PATH"

