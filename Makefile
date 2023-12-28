.PHONY: all
all: index.pdf

%.pdf: %.tex
	latexmk $*.tex
	mv build/$*.pdf $*.pdf

.PHONY: clean
clean:
	rm -rf *.pdf build
