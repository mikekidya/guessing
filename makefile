all: make_readme

make_readme:
	echo '# Guessing game\n' > README.md
	echo 'Make run: $(shell date)\n' >> README.md
	echo 'Lines of code: $(shell wc -l < guessinggame.sh | xargs)' >> README.md
