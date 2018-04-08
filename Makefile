thesis: compile show

show:
	okular tese.pdf

clean:
	rm -f *.pdf compile/*

compile: clean
	pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
	bibtool -s -d -x compile/tese.aux ~/Documents/library.bib > library.bib
	bibtex compile/tese.aux
	pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
	pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
	mv compile/tese.pdf ./


# pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
# makeindex --interaction=nonstopmode -output-directory=compile tese.idx
# makeindex --interaction=nonstopmode -output-directory=compile tese.nlo -s nomencl.ist -o tese.nls
# makeglossaries --interaction=nonstopmode -output-directory=compile tese.aux
# pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
# pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
