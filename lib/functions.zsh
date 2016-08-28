# displays command history sorted by usage
tophistory() {
  history | awk '{a[$2]++ } END{for(i in a){print a[i] " " i}}' | sort -rn | head -n 30
}

# quick and dirty calc
calc() {
      echo "scale=3;$@" | bc -l
}

# search keyword [path]
search() {
    arg=()
    if [ ! -z "$2" ]; then
        arg+=(-name $1)
        pattern=$2
    else
        pattern=$1
    fi

    /usr/bin/find ${arg[@]} -type f -exec grep -Hin1 "$pattern" {} \;
}

# upto user@example.com example.zip ['~']
# upto staging example.zip ['~']
# rsync -v example.zip user@example.com:~
upto() {
    ssh=$1
    local_file=$2
    remote_path='~'
    if [ ! -z "$3" ]; then
        remote_path="$3"
    fi
    rsync -v $local_file $ssh:$remote_path
}

# dlfrom user@example.com /tmp/files.tar ['.']
# rsync -v user@example.com:/tmp/files.tar .
dlfrom () {
    ssh=$1
    remote_file=$2
    local_path='.'
    if [ ! -z "$3" ]; then
        local_path="$3"
    fi
    rsync -v $ssh:$remote_file $local_path
}

# sources a given set of files
# usage:
#    load file|regexp
# example:
#    load "$HOME/.zshrc.d/*.zsh-plugin"
#    load "$HOME/.env*.sh" "$HOME/.zshrc.d/*.alias.zsh"
load() {
    for regexp in $*; do
	local root=$(dirname "$regexp")
	for f in $(find "$root/" -print | grep "$regexp" | sort); do
	    source "$f"
	done
    done
}

# list and filter processes 
# usage:
# 	psg regexp [--kill]
# example:
# 	psg
# 	psg vim --kill
# use --kill to kill listed processes
psg() {
    regexp="$@"
    kill=0
    for p in $@; do
        case $p in
        '--kill')
            kill=1
            regexp=$(echo $regexp | sed 's/--kill//g')
        ;;
        esac
    done

    psargs='%p %a'
    if [ $(uname) = "Darwin" ]; then
        psargs='pid args'
    fi
    if [ $kill -eq 0 ]; then
        ps axo $psargs | grep -v grep | grep "$regexp"
    else
        for pid in $(ps axo $psargs | grep -v grep | grep "$regexp" | sed 's/^ //g' | cut -d' ' -f1); do
            kill $pid
        done
    fi
}

_ZSH_TIME_MARK=0
mark() {
    local NOW=$(date "+%s.%N")
    echo "scale=3;$MARK-$NOW" | bc -l
    _ZSH_TIME_MARK=$NOW
}
