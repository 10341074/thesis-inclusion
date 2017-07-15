edit: pre.tex
	kile $< &
open: pre.pdf
	evince $< &
build: pre.tex
	pdflatex $<
distclean:
	-rm *~ *.aux *.log *.nav *.out *.snm *.toc *.bbl *.blg *.backup *.bcf *.xml
clean: distclean
	-rm *.pdf *.dvi
