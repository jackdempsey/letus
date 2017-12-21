function win {
  str=${@:2}
  if [ $1  = 'jack' ] || [ $1  = 'me' ] || [ $1  = 'bill' ] || [ $1  = 'sarah' ] ; then
    letus asana --command win --task-name $str --person-name $1
  else
    letus asana --command win --task-name $str
  fi
}

# call like: win great pro/con advice (defaults to me with no recognized name)
#            win bill helping fix root causes
#            win sarah excellent comment on strategy
