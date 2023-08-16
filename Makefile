FILE    = main
TEX     = $(FILE).tex
BIBTEX  = $(FILE).aux

all:
	make pdf
	make clean

pdf:
	pdflatex -shell-escape $(TEX)
	bibtex $(BIBTEX)
	pdflatex -shell-escape $(TEX)
	pdflatex -shell-escape $(TEX)

simple:
	pdflatex -shell-escape $(TEX)

clean:
	rm $(FILE).aux $(FILE).log $(FILE).bbl $(FILE).out $(FILE).blg
