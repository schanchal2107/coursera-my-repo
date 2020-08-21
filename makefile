#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# guessinggame" > README.md
	echo "Date:" >> README.md
	date >> README.md
	echo -e "\nLines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
