if status is-interactive
    starship init fish | source
    # Commands to run in interactive sessions can go here
end


set fish_greeting


# List directory contents
alias l='exa -lah --git --icons'
alias vim='nvim'
alias nv='nvim'
alias v='nvim'
alias nnn='nnn -P p -H'
alias yt='ytfzf -t'
alias yts='ytfzf -tc S'
