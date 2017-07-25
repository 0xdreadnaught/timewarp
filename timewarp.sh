#!/bin/bash

OLDEST=999999999999999
CURRENT=99999999999

echo "Timewarp engaged ..."

#iterate theough all files in given path
for OUTPUT in $(find /);
do
	#pull the current modified date in seconds since epoch
	CURRENT=$(eval stat -c %Y $OUTPUT)

	#compare current date with oldest known date, if older we store it
	if [ $CURRENT -lt $OLDEST ];then
		OLDEST=$CURRENT
	fi
done

#now we convert the oldest date from seconds to a usable date
FAKEDATE=$(date --date=@$OLDEST)

#now that we have the oldest date, we need to run through the path again and alter all the modified dates
for OUTPUT in $(find /);
do
	$(eval touch -d "$FAKEDATE" $OUTPUT)
done
echo "Timewarp complete ..."
