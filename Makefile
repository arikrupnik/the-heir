FOUNTAINHEADDIR=fountainhead
include $(FOUNTAINHEADDIR)/fountainhead.mk

PDFs = the-heir.pdf the-heir_treatment.pdf

VPATH = background-material

pdf: $(PDFs)

CHARACTER_STUDIES = characters-heading.md tom.md claire.md drake.md manny.md \
	penny.md ben.md anna.md dwight.md harry.md suitcase.md

the-heir_treatment.md: the-heir.plot-summary $(CHARACTER_STUDIES) motifs.md
	cat $+ > $@

clean:
	rm -f $(PDFs) *.ftx* *.d *.html *.plot-summary the-heir_treatment.md

