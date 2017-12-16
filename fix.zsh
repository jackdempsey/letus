function fix {
  str="$*"
  bin/letus asana --command fix --task-name $str
}
