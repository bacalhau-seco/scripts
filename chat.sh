CHAT=~/Media/stream/chat.txt
echo "" > $CHAT
while [[ true ]]; do
  sed 's/.*</</g' ~/irc/based.pt/\#stream/out | sed '/.*-!-.*/d' > $CHAT
  notify-send "$(tail -n 1 ~/Media/stream/chat.txt)"
  sleep 1
done
