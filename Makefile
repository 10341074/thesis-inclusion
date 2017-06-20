edit: thesis.tex
	kile $< &
open: notes.pdf
	evince $< &
build: notes.tex
	pdflatex $<
distclean:
	-rm *~ *.aux *.log *.nav *.out *.snm *.toc *.bbl *.blg *.backup
clean: distclean
	-rm *.pdf *.dvi
bibtex: notes.aux
	bibtex notes.aux
