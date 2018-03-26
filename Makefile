PDFs = the-heir.pdf the-heir_treatment.pdf
pdf: $(PDFs)

FOUNTAINHEADDIR=fountainhead
include $(FOUNTAINHEADDIR)/fountainhead.mk

VPATH = background-material

CHARACTER_STUDIES = tom.md claire.md drake.md manny.md \
	penny.md ben.md anna.md dwight.md harry.md suitcase.md

character-studies.md: $(CHARACTER_STUDIES)
	cat $+ | $(ASPELL) list -p $(DICT_FILE) | $(GREP) -nwFf - --color=auto $+; \
		[ $$? -eq 1 ]
	echo '# Characters' | cat - $+ > $@

the-heir_treatment.md: the-heir.plot-summary character-studies.md motifs.md
	cat $+ > $@

clean:
	rm -f *pdf *.ftx* *.d *.html *.plot-summary the-heir_treatment.md character-studies.md

