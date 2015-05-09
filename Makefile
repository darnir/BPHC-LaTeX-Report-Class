# Makefile for BPHC Latex Report Class

thesis = main.tex

.PHONY: FORCE

all: FORCE $(thesis)

$(thesis): FORCE
	latexmk -pdf -f $(thesis)

clean:
	find . \( -name "*.toc" -o -name "*.fdb_latexmk" \
                            -o -name "*.log" \
                            -o -name "*.fls" \
                            -o -name "*.aux" \
                            -o -name "*.bbl" \
                            -o -name "*.blg" \
                            -o -name "*.glo" \
                            -o -name "*.ist" \
                            -o -name "*.lof" \
                            -o -name "*.lot" \
                            -o -name "*.out" \
                            -o -name "*.toc" \
                            \) -print0 | xargs -0 rm -f
