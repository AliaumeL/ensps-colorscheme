.PHONY: lint clean

ensps.sty: ensps.ins
	latex ensps.ins

# We need to use the classical several
# pass compilation to get everything right
# gind.ist is a specific style for the index
# that is compatible with dtx files.
# https://tex.stackexchange.com/questions/84870/index-completely-messed-up-in-dtx-file
ensps.pdf: ensps.dtx ensps.sty
	pdflatex ensps.dtx
	makeindex -s gind.ist ensps.idx
	pdflatex ensps.dtx

install:
	cp ensps.sty ~/texmf/tex/latex/ensps/
	cp ensps.pdf ~/texmf/doc/latex/ensps/

ensps.zip: ensps.sty ensps.pdf
	zip ensps.zip ensps.sty ensps.pdf

lint: ensps.sty
	chktex ensps.dtx
	chktex ensps.sty

clean:
	rm -rf ensps.pdf \
		   ensps.aux \
		   ensps.dvi \
		   ensps.glo \
		   ensps.hd \
		   ensps.idx \
		   ensps.log \
		   ensps.out \
		   ensps.pdf \
		   ensps.sty
