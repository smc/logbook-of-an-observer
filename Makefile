all: Logbook.pdf

Logbook.pdf: Logbook.tex *.tex *.sty
	xelatex $<
	xelatex $<	# to include generated ToC
	xdg-open $@

clean:
	rm -f Logbook.pdf *.{aux,toc,log,out}
