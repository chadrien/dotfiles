alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

function tmuxinator
    if test $argv[1] = "start"
        tmux kill-server
    end

    command tmuxinator $argv
end