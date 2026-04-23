MAIN     = 00-main
LATEX    = latexmk
FLAGS    = -pdf -interaction=nonstopmode -halt-on-error -file-line-error

.PHONY: all clean

all:
	$(LATEX) $(FLAGS) $(MAIN).tex

clean:
	find . -maxdepth 1 -name "*.aux" -o -name "*.bbl" -o -name "*.bcf" \
	  -o -name "*.bcf-SAVE-ERROR" -o -name "*.bbl-SAVE-ERROR" \
	  -o -name "*.blg" -o -name "*.fdb_latexmk" -o -name "*.fls" \
	  -o -name "*.lof" -o -name "*.log" -o -name "*.lot" -o -name "*.out" \
	  -o -name "*.run.xml" -o -name "*.synctex.gz" -o -name "*.toc" \
	  -o -name "pdfa.xmpi" | xargs rm -f

cleanall: clean
	rm -f $(MAIN).pdf
