#!/bin/bash

BASE_URL=""
CLOG_URL=""

print_help () {
	echo "g - Goto clog. (you dont need to put the /clog/index on the end of the url, this command can nbe used to check if a website has an ecisting clog)"
        echo "p - goto post while at clog"
        echo "i - show index of current clog"
        echo "h - this help text"
        echo "q - quit"
	echo ""
}

check_url () {
	if curl --output /dev/null --silent --fail -r 0-0 "$CLOG_URL"; then
		clear
		curl -s $CLOG_URL
		echo ""
		echo ""
	else
		echo "No clog at $CLOG_URL"
		CLOG_URL=""
		BASE_URL=""
	fi
}

clear
echo "Welcome to the clog reader, making clogs a tiny bit easier to read"
echo ""
print_help

while :
do
	read -p ": " -s -n1
	echo ""
	case $REPLY in
	'q')
		exit 0
		;;
	'g')
		read -p "Check for clog at: "
		BASE_URL=$REPLY
		CLOG_URL="${REPLY}/clog/index"
		check_url
		;;
	'p')
		read -p "Goto post: "
		CLOG_URL="${BASE_URL}/clog/${REPLY}"
		check_url
		;;
	'i')
		CLOG_URL="${BASE_URL}/clog/index"
		check_url
		;;
	'h')
		print_help
		;;
	esac
done
