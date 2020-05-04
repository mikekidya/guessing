all: make_readme

make_readme:
	echo '# Guessing game\n' > README.md
	echo 'Make run: $(shell date)\n' >> README.md
	echo 'Files count: $(shell ls | wc -l | xargs)' >> README.md
