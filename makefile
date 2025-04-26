bash
README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Date and Time: $(shell date)" >> README.md
	echo "Number of lines of code: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
