. settings

flash_message () {
	line=`shuf -n 1 ${message_file}`
	vertical_offset=`echo $RANDOM % 700 + 1 | bc`
	horizontal_offset=`echo $RANDOM % 800 + 1 | bc`
	echo $line | osd_cat -c green -o $vertical_offset -i $horizontal_offset -f '-adobe-helvetica-*-*-*--15-*-*-*-*-*-*-*' &
	sleep ${flash_time}
	killall -9 osd_cat
	sleep ${inter_message_time}
}

while true
do
	flash_message
done
