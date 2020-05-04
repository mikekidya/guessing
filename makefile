all: make_readme

make_readme:
	echo '# Guessing game' > README.md
	echo 'Make run: $(shell date)' >> README.md
	echo 'Files count: $(shell ls | wc -l | xargs)' >> README.md
