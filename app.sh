#!/bin/bash

cat > tlgm.conf <<EOL
[telegram]
token = ${TG_TOKEN}
chat_id = 242426387
EOL

telegram-send --config tlgm.conf "${TEXT}"