FOUNTAINHEADDIR=fountainhead
include $(FOUNTAINHEADDIR)/fountainhead.mk

PDFs = heir-structure.pdf

pdf: $(PDFs)

clean:
	rm -f $(PDFs) *.ftx *.html

