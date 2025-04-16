.PHONY: clean view

cv.pdf : cv.tex
	pdflatex cv.tex

watch:
	make
	open main.pdf
	while `true`; do inotifywait -e modify . -r --exclude "(main.pdf)|(.*\.swp)" ; yes X | make main.pdf; done

view:	cv.pdf
	open cv.pdf

clean:
	rm -f *.aux *.log *.out *.pdf
