#!/bin/bash
echo "lets config"
read -p $'Type name for the local copy of chat. Default:\nlocallog.txt\n' FILE
if [ "$FILE" == "" ]; then
FILE="locallog.txt"
fi

read -p $'Chat log to subscribe to. Default:\nhttp://localhost/txt.txt\nbut maybe you want to type:\nhttps://selimhex.com/portal/bash/curling/txt.txt' URL
if [ "$URL" == "" ]; then
#URL="http://localhost/txt.txt"
URL="https://selimhex.com/portal/bash/curling/txt.txt"
fi

read -p $'Chat Input. Default:\nhttp://localhost/chat.php\nbut maybe you want to type:\nhttps://selimhex.com/portal/bash/curling/chat.php' FORM
if [ "$FORM" == "" ]; then
#FORM="http://localhost/chat.php"
FORM="https://selimhex.com/portal/bash/curling/chat.php"
fi



(echo "#!/bin/bash"
echo "FILE=${FILE}"
echo "URL=${URL}"
echo "FORM=${FORM}"
echo "if test -f \"\$FILE\"; then
    echo \"\$FILE exists.\"
else
    touch \$FILE;
fi

resize=\"/usr/X11/bin/resize\"
if [ -f \$resize ]
then
canresize=true
else
canresize=false
fi
")>c.sh

echo "">$FILE
