
all: README.md

README.md: guessinggame.sh
	echo "# Bash Guessing Game" > README.md
	echo >> README.md # Necessary newlines. (?)
	echo `date` >> README.md
	echo >> README.md # Necessary newlines. (?)
	echo `cat guessinggame.sh | wc -l` lines of code in guessinggame.sh >> README.md

clean:
	rm README.md
