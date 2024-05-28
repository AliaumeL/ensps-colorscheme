ensps.sty: ensps.ins
	latex ensps.ins

ensps.pdf: ensps.dtx ensps.sty
	pdflatex ensps.dtx

install:
	cp ensps.sty ~/texmf/tex/latex/ensps/
	cp ensps.pdf ~/texmf/doc/latex/ensps/

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
