install : resume.pdf
	cp resume.pdf ~/wil.bz/resume.pdf

resume.pdf : resume.tex
	pdflatex $<
	pdflatex $<

clean :
	rm -f resume.log resume.aux resume.pdf
