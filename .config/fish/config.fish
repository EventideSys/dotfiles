if status is-interactive
    starship init fish | source
    # Commands to run in interactive sessions can go here
end

#set -g --export
set -g --export EDITOR vim

set fish_greeting


# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'
