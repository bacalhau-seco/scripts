while [[ true ]]; do
  sed 's/.*</</g' ~/irc/based.pt/\#stream/out |  sed '/.*-!-.*/d' > chat
    sleep 1
done
