# custom functions
dladd() {
  if [ -z $DUMPR_DL_DIR ]; then
    DUMPR_DL_DIR='.'
  fi

  if [ -z $DUMPR_DL_LIST ]; then
    DUMPR_DL_LIST='list'
  fi

  listname="$DUMPR_DL_DIR/$DUMPR_DL_LIST"

  for i; do
    echo "$i" >> $listname
  done
  
  echo 'Updated ' $listname
}

tophistory() {
  history | awk '{a[$2]++ } END{for(i in a){print a[i] " " i}}' | sort -rn | head -n 30
}

_c() {
  if [ -z $CDL_LS_PARAMS ]; then
      LS_PARAMS=$2
  fi

  if [[ -d "$1" ]]; then
    cd "$1"
    ls $CDL_LS_PARAMS
  else
    echo "c: '$1': Directory not found"
  fi
}
alias c=_c

calc() {
      echo "scale=3;$@" | bc -l
}

service() {
    sudo /etc/init.d/$1 $2
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

updatehosts() {
    cat /etc/hosts.d/* > /tmp/hosts
    sudo mv /tmp/hosts /etc/hosts
}

updateadblock() {
    curl http://someonewhocares.org/hosts/zero/hosts -o /tmp/adblock 2> /dev/null
    sudo mv /tmp/adblock /etc/hosts.d/adblock
    updatehosts
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
#    load file|regexp|path root
load() {
    regexp="$1"
    root="$PWD"
    if [ ! -z "$2" ]; then
        root="$2"
    fi
    if [ -e "$root" ]; then
        for f in $(find $root -print | grep "$regexp" | sort); do
            source "$f"
        done
    fi
}

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
    if [ $kill -eq 0 ]; then
        ps axo $psargs | grep -v grep | grep "$regexp"
    else
        for pid in $(ps axo $psargs | grep -v grep | grep "$regexp" | sed 's/^ //g' | cut -d' ' -f1); do
            kill $pid
        done
    fi
}
