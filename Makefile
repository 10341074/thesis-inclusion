edit: thesis.tex
	kile $< &
open: thesis.pdf
	evince $< &
build: thesis.tex sources.bib
	pdflatex $<
	# bibtex thesis.aux
	biber thesis.aux
	pdflatex $<
	pdflatex $<
distclean:
	-rm *~ *.aux *.log *.nav *.out *.snm *.toc *.bbl *.blg *.backup *.bcf *.xml *.lof *.lot
clean: distclean
	-rm *.pdf *.dvi
bibtex: sources.bib
	bibtex thesis.aux
fig-import:
	-cp ~/Documents/python/venv/runs/fig-thesis/* ./fig/
fig-convert:
	# epstopdf ./fig/*.eps ./fig/*.pdf
	find fig/ . -name "*.eps" -exec epstopdf {} \;
