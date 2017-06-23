edit: thesis.tex
	kile $< &
open: thesis.pdf
	evince $< &
build: thesis.tex sources.bib
	pdflatex $<
	bibtex thesis.aux
	pdflatex $<
distclean:
	-rm *~ *.aux *.log *.nav *.out *.snm *.toc *.bbl *.blg *.backup
clean: distclean
	-rm *.pdf *.dvi
bibtex: sources.bib
	bibtex thesis.aux
import-fig:
	cp ~/Documents/python/venv/runs/fig-thesis/* ./fig/
