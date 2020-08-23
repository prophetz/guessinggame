readme.md:
	rm -rf README.md
	touch README.md
	echo "- Project name: **Guessing Game**" >> README.md
	echo "- Make was run at " >> README.md
	date '+%d/%m/%Y %H:%M:%S' >> README.md
	echo "- guessinggame.sh contains the following number of lines: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md