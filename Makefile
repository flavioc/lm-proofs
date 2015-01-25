
all: doc.pdf

doc.pdf: doc.tex
	pdflatex doc.tex
	bibtex doc
	pdflatex doc.tex
	pdflatex doc.tex

clean:
	rm -f doc.pdf doc.aux doc.log doc.bbl doc.blg
