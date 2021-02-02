
SHELL = /bin/sh

all: sane_iccs21.pdf

sane_iccs21.pdf: *.tex 
	pdflatex sane_iccs21
	pdflatex sane_iccs21
	bibtex sane_iccs21
	touch sane_iccs21.tex
	pdflatex sane_iccs21
	pdflatex sane_iccs21


clean:
	if (rm -f *.log *.aux *.bbl *.blg *.out *.toc *.dvi *.ps *.brf *.lbl sane_iccs21.pdf) then :; fi

