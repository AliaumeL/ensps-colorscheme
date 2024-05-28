.PHONY: lint clean

ensps.sty: ensps.ins
	latex ensps.ins

ensps.pdf: ensps.dtx ensps.sty
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
