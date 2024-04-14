#!/usr/bin/env sh

set -x

MSG_CONTENTS=slack_msg.txt

echo -e "TEST MESSAGE:" > $SLACK_MSG_CONTENTS

cat $MESSAGE >> $MSG_CONTENTS

echo 'SLACK_MESSAGE<<EOF' >> $GITHUB_ENV
echo "$(cat $MSG_CONTENTS)" >> $GITHUB_ENV
echo 'EOF' >> $GITHUB_ENV
