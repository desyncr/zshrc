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
