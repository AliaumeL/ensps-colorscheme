.PHONY: lint clean

PKG=ensps-colorscheme
DOC=$(PKG)-doc.pdf

$(PKG).sty: $(PKG).ins
	latex $(PKG).ins

# We need to use the classical several
# pass compilation to get everything right
# gind.ist is a specific style for the index
# that is compatible with dtx files.
# https://tex.stackexchange.com/questions/84870/index-completely-messed-up-in-dtx-file
$(PKG)-doc.pdf: $(PKG).dtx $(PKG).sty
	pdflatex $(PKG).dtx
	makeindex -s gglo.ist -o $(PKG).gls $(PKG).glo
	makeindex -s gind.ist $(PKG).idx
	pdflatex $(PKG).dtx
	mv $(PKG).pdf $(PKG)-doc.pdf

install:
	cp $(PKG).sty ~/texmf/tex/latex/$(PKG).
	cp $(PKG)-doc.pdf ~/texmf/doc/latex/$(PKG).

$(PKG).zip: $(PKG).sty $(PKG)-doc.pdf
	mkdir $(PKG)
	cp Makefile $(PKG)/Makefile
	cp LICENSE  $(PKG)/LICENSE
	cp README.md $(PKG)/README.md
	cp $(PKG)-doc.pdf $(PKG)/$(PKG)-doc.pdf
	cp $(PKG).dtx $(PKG)/$(PKG).dtx
	cp $(PKG).ins $(PKG)/$(PKG).ins
	zip -r $(PKG).zip $(PKG)


lint: $(PKG).sty
	chktex $(PKG).dtx
	chktex $(PKG).sty

clean:
	rm -rf $(PKG).pdf \
		   $(PKG).aux \
		   $(PKG).dvi \
		   $(PKG).glo \
		   $(PKG).hd \
		   $(PKG).idx \
		   $(PKG).log \
		   $(PKG).out \
		   $(PKG).pdf \
		   $(PKG).sty \
		   $(PKG).zip
