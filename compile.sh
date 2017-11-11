#!/usr/bin/env /bin/bash

rm *.aux *.log *.pdf
pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
pdflatex --interaction=nonstopmode -output-directory=compile tese.tex
