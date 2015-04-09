logname="ssl_request_log"
logdirectory="ssl_request"


for i in `seq 17 31`;
do
        cat $logname| grep "$i/May" > may_$i
done    

for i in `seq 1 13`;
do
        cat $logname| grep "$i/Jun" > jun_$i
done    

mv jun_* $logdirectory
mv may_* $logdirectory