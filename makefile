DOC=tahak
PDF=xdg-open
TEX=pdfcsplain

pdf: $(DOC).pdf

$(DOC).pdf: $(DOC).tex
	$(TEX) $(DOC).tex
	$(TEX) $(DOC).tex

clean:
	rm $(DOC).log $(DOC).pdf

run: $(DOC).pdf
	$(PDF) $(DOC).pdf