all: fonts-by-x-height.pdf fonts-by-space.pdf

fonts-by-x-height.pdf: fonts-by-x-height.tex
	latexmk -e '$$max_repeat=5' -pdf -shell-escape \
		-interaction=nonstopmode \
		-halt-on-error -file-line-error fonts-by-x-height.tex

fonts-by-space.pdf: fonts-by-space.tex
	latexmk -e '$$max_repeat=5' -pdf -shell-escape \
		-interaction=nonstopmode \
		-halt-on-error -file-line-error fonts-by-space.tex

clean:
	latexmk -c fonts-by-x-height.tex
	latexmk -c fonts-by-space.tex

distclean: clean
	latexmk -C fonts-by-x-height.tex
	latexmk -C fonts-by-space.tex
