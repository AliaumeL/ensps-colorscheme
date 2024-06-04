.PHONY: all clean

SOURCES=ensps.svg \
		lmf.svg   \

PDFS=$(patsubst %.svg,%.pdf,$(SOURCES))
PNGS=$(patsubst %.svg,%.png,$(SOURCES))

%.png: %.svg
	inkscape --export-background-opacity=0 \
		     --export-width=512 \
			 --export-type=png  \
			 --export-filename=$@ \
			 $<

%.pdf: %.svg
	inkscape --export-background-opacity=0 \
		     --export-width=512 \
			 --export-type=pdf  \
			 --export-filename=$@ \
			 $<


all: $(PDFS) $(PNGS)
	@echo "Done"


clean:
	rm -f $(PDFS) $(PNGS)
