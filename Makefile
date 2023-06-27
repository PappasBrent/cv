.PHONY: check clean

cv.pdf : cv.tex
	pdflatex cv.tex

check: cv.pdf

clean:
	rm -f *.aux *.log *.out *.pdf
