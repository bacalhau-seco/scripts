CHAT=~/Media/stream/chat.txt
CHAT2=~/Media/stream/chat2.txt
echo "" > $CHAT
while [[ true ]]; do
  sed 's/.*</</g' ~/irc/based.pt/\#stream/out | sed '/.*-!-.*/d' > $CHAT
  if [ "$(tail -n 1 $CHAT)" != "$(tail -n 1 $CHAT2)" ]; then
    notify-send "$(tail -n 1 $CHAT)"
  fi
  sleep 1
  cat $CHAT > $CHAT2
done
