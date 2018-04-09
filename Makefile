PDFs = the-heir.pdf the-heir_treatment.pdf
pdf: $(PDFs)

FOUNTAINHEADDIR=fountainhead
include $(FOUNTAINHEADDIR)/fountainhead.mk

VPATH = background-material

CHARACTER_STUDIES = tom.md claire.md drake.md manny.md \
	ben.md anna.md dwight.md harry.md

character-studies.md: $(CHARACTER_STUDIES)
	cat $+ | $(ASPELL) list -p $(DICT_FILE) | $(GREP) -nwFf - --color=auto $+; \
		[ $$? -eq 1 ]
	echo '# Characters' | cat - $+ > $@

the-heir_treatment.md: the-heir.plot-summary character-studies.md motifs.md
	cat $+ > $@

the-heir_ps.md: the-heir.plot-summary
	cp $< $@

clean:
	rm -f *pdf *.ftx* *.d *.html *.plot-summary the-heir_treatment.md character-studies.md

