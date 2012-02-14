resume.pdf : resume.tex resume.cls
	pdflatex $<

clean :
	rm -f resume.log resume.aux resume.pdf
