.PHONY: clean view

cv.pdf : cv.tex
	pdflatex cv.tex

view:	cv.pdf
	open cv.pdf

clean:
	rm -f *.aux *.log *.out *.pdf
