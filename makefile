targets = tp-2.pdf

includes =  modulo-bdd.tex modulo-dato.tex modulo-diccNat.tex modulo-diccString.tex modulo-tabla.tex tp-2.tex 
libs =  aed2-itef.sty aed2-symb.sty aed2-tad.sty aed2-tokenizer.sty algorithm.sty algorithmic.sty algorithmicx.sty algpseudocode.sty caratula.sty latex-lucas.sty

all: $(targets)

$(targets) : %.pdf : %.tex $(libs) $(includes)
	pdflatex -no-c-style-errors $*
	pdflatex -no-c-style-errors $*
	bibtex -no-c-style-errors $*
	pdflatex -no-c-style-errors $*

clean:
	@rm $(targets) 2>/dev/null || true
	@rm ./*.aux 2>/dev/null || true
	@rm ./*.log 2>/dev/null || true
	@rm ./*.out 2>/dev/null || true
	@rm ./*.toc 2>/dev/null || true
