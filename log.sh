. c.sh
if [ $canresize ]
then
  ${resize} -s 20 60
  clear
fi
#curl -s $URL > $FILE
function logg() {
#echo "tick"
#wget -ca -o /dev/null -O $FILE $URL ################ < this was it before that >>>
wget -c -o /dev/null $URL -O $FILE ####### fav
#wget -ca -o /dev/null -O $FILE $URL
#wget -Nca -o - -O $FILE $URL
#echo "tock"
}
function logger() {
while true; do logg; sleep 2; done
}
logger &

read -p "--- HIT ENTER TO KILL all BG JOBS ---" timetokill
rm $FILE
kill $(jobs -p)

#. log.sh & tail -f $FILE


# . log.sh & . say.sh
