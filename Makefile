TXT = $(wildcard h??.tex) \
	$(wildcard tone?.tex) \
	$(wildcard irmos??.tex) \
	txt01.tex hirmologion.tex hirmologion.sty

all: hirmologion

hirmologion: hirmologion.pdf

clean:
	rm -f *.log *.aux *.out wip.pdf hirmologion.pdf

hirmologion.pdf: hirmologion.tex $(TXT)
	TEXINPUTS=.:/Users/mike/git/cu-tex:: xelatex $<
	TEXINPUTS=.:/Users/mike/git/cu-tex:: xelatex $<

wip: # WIP (Work in Progress)
	TEXINPUTS=.:/Users/mike/git/cu-tex:: xelatex wip.tex
	TEXINPUTS=.:/Users/mike/git/cu-tex:: xelatex wip.tex

h.pdf: h.tex $(TXT) fwlw.sty
	TEXINPUTS=.:/Users/mike/git/cu-tex:: xelatex $<
	TEXINPUTS=.:/Users/mike/git/cu-tex:: xelatex $<
