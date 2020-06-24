. c.sh;
if [ $canresize ]
then
  ${resize} -s 20 60
  clear
fi
tail -f locallog.txt
