. settings

messages=`cat ${message_file}`
flash_message () {
	line=`echo $messages| sed 's/I/\r\nI/g' | shuf -n 1`
	echo $line | osd_cat -p middle -A center &
	sleep ${flash_time}
	killall -9 osd_cat
	sleep ${inter_message_time}
}

while true
do
	flash_message
done
