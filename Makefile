PDFs = the-heir.pdf the-heir_treatment.pdf
pdf: $(PDFs)

WIKI_PATH = ../the-heir.wiki
WIKIs = $(WIKI_PATH)/Plot-Outline.md $(WIKI_PATH)/Characters.md
wiki: $(WIKIs)

FOUNTAINHEADDIR=fountainhead
include $(FOUNTAINHEADDIR)/fountainhead.mk

VPATH = characters

CHARACTER_STUDIES = howard.md penny.md frank.md \
	ben.md anna.md dwight.md hannah.md cindy.md \
	manny.md kate.md

character-studies.md: $(CHARACTER_STUDIES)
	cat $+ | $(ASPELL) list -p $(DICT_FILE) | $(GREP) -nwFf - --color=auto $+; \
		[ $$? -eq 1 ]
	cat $+ > $@

characters.head:
	echo '\n\n# Characters' > $@
plot.head:
	echo '\n\n# Plot Summary' > $@

the-heir_treatment.md: the-heir.header plot.head the-heir.plot-summary characters.head character-studies.md
	cat $+ > $@

$(WIKI_PATH)/Plot-Outline.md: the-heir.plot-summary
	cp $< $@
$(WIKI_PATH)/Characters.md: character-studies.md
	cp $< $@

clean:
	rm -f *pdf *.ftx* *.d *.html *.plot-summary *.head the-heir_treatment.md character-studies.md

