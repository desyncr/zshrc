# custom functions

# appends the arguments to the list
dumprla() {
  listname='list'
  for i; do
    echo '$i' >> $listname
  done
}