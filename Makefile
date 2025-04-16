.PHONY: clean view

cv.pdf : cv.tex
	pdflatex cv.tex

watch:
	make
	open cv.pdf
	while `true`; do inotifywait -e modify . -r --exclude "(cv.pdf)|(.*\.swp)" ; yes X | make cv.pdf; done

view:	cv.pdf
	open cv.pdf

clean:
	rm -f *.aux *.log *.out *.pdf
