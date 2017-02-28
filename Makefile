
ipefigs=$(wildcard figs/*.ipe)
slidefigs=$(wildcard figs/*.ipe)

alantree.pdf : figs alantree.tex alantree.bib $(ipefigs)
	latexmk -pdf alantree.tex 	

figs: $(ipefigs)
	(cd figs; make)

clean :
	rm -f alantree.pdf figs/*.pdf
