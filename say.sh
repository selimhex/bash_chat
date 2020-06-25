. c.sh
if [ $canresize ]
then
  ${resize} -s 5 60
  clear
fi
echo "Hi,!"
read -p "What is your username? " user
echo "Hello, ${user}!"

# fake_shell.sh https://gist.github.com/JKirchartz/9abdf0ffe6687971cd28d03c021078e2
function parser {
  shopt -s nocasematch
  case "$*" in
    exit) exit 0;;
    echo*) shift; echo $*;;
#    *) figlet $*;;
    *) curl -d user=${user} --data-urlencode chat="""$*""" -G $FORM;;
    #wget -c -o /dev/null $URL -O $FILE;;
    #wget -ca -o /dev/null -O $FILE $URL;;

    #curl -d user=a -d chat=jgjg -G http://localhost/chat.php

    #URL="http://localhost/txt.txt";
    #wget -ca -o /dev/null -O output.txt "$URL";;
  esac
}

# fake a shell
while read -p "$>" i; do parser $i; done
