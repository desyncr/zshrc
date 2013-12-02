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

c() {
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

calc() {
      echo "scale=3;$@" | bc -l
}

service() {
    sudo /etc/init.d/$1 $2
}
