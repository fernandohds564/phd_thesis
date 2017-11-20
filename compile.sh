#!/usr/bin/env /bin/bash

rm *.aux *.log *.pdf compile/*
pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
pdflatex --interaction=nonstopmode -output-directory=compile tese.tex


# pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
# bibtex compile/tese.aux
# makeindex --interaction=nonstopmode -output-directory=compile tese.idx
# makeindex --interaction=nonstopmode -output-directory=compile tese.nlo -s nomencl.ist -o tese.nls
# makeglossaries --interaction=nonstopmode -output-directory=compile tese.aux
# pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
# pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
