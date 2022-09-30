.PHONY: clean

cv.pdf : cv.tex
	pdflatex cv.tex

clean:
	rm -f *.aux *.log *.out *.pdf