FOUNTAINHEADDIR=fountainhead
include $(FOUNTAINHEADDIR)/fountainhead.mk

PDFs = the-heir.pdf the-heir_treatment.pdf

pdf: $(PDFs)

the-heir_treatment.md: the-heir.plot-summary character-studies.md motifs.md
	cat $+ > $@

clean:
	rm -f $(PDFs) *.ftx *.html *.plot-summary the-heir_treatment.md

