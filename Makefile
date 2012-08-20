all: Logbook.pdf

Logbook.pdf: Logbook.tex
	xelatex $<
	xelatex $<	# to include generated ToC
	xdg-open $@

clean:
	rm -f Logbook.{pdf,aux,toc,log}
