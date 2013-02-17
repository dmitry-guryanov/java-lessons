LATEX=pdflatex
LFLAGS=-shell-escape


all: lesson-2.pdf lesson-3.pdf java.pdf
#all: lesson-3.pdf

lesson-2.pdf: lesson-2.tex lesson-2-body.tex settings.tex
	$(LATEX) $(LFLAGS) lesson-2.tex

lesson-3.pdf: lesson-3.tex lesson-3-body.tex settings.tex
	$(LATEX) $(LFLAGS) lesson-3.tex

java.pdf: lesson-2-body.tex lesson-3-body.tex settings.tex java.tex
	$(LATEX) $(LFLAGS) java.tex

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.vrb texput.log *~
