alias serve="python -m SimpleHTTPServer"

if ! which pbcopy &>/dev/null && which xsel &>/dev/null; then
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

# pip install thefuck
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
