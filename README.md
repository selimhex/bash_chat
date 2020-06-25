# bash_chat
no one really needed it and it has many security loopholes, but it works.

## to initialize
you can run this one liner in a new directory where you'd store your "local chat client" to make copies of the essential files.

`curl -O "https://raw.githubusercontent.com/selimhex/bash_chat/master/{config.sh,window.sh,log.sh,say.sh}"; . config.sh; . window.sh`

```
# open a new tab next to window.sh (⌘+t)
. log.sh
# open another tab. but ideally drag it out of the same window.
. say.sh

```

## structure
1. `config.sh` creates `c.sh` where the variables like local copy of the log, online chat log, and php interface to the chat log are saved.
1. `window.sh`: scrapes (`tail -f`) the local log. most likely a `.txt` or `.log` file.
1. `log.sh`: downloads online chat log every 2 seconds and adds new lines to local log
1.  `say.sh`: where you'd type your name and chat inputs