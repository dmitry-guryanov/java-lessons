LATEX=pdflatex
LFLAGS=-shell-escape


all: lesson-2.pdf lesson-3.pdf lesson-4.pdf lesson-6.pdf lesson-7.pdf java.pdf
#all: lesson-12.pdf

lesson-2.pdf: lesson-2.tex lesson-2-body.tex settings.tex
	$(LATEX) $(LFLAGS) lesson-2.tex

lesson-3.pdf: lesson-3.tex lesson-3-body.tex settings.tex
	$(LATEX) $(LFLAGS) lesson-3.tex

lesson-4.pdf: lesson-4.tex lesson-4-body.tex settings.tex
	$(LATEX) $(LFLAGS) lesson-4.tex

lesson-6.pdf: lesson-6.tex lesson-6-body.tex settings.tex
	$(LATEX) $(LFLAGS) lesson-6.tex

lesson-7.pdf: lesson-7.tex lesson-7-body.tex settings.tex
	$(LATEX) $(LFLAGS) lesson-7.tex

lesson-10.pdf: lesson-10.tex lesson-10-body.tex settings.tex
	$(LATEX) $(LFLAGS) lesson-10.tex

lesson-12.pdf: lesson-12.tex lesson-12-body.tex settings.tex
	$(LATEX) $(LFLAGS) lesson-12.tex

java.pdf: lesson-2-body.tex lesson-3-body.tex lesson-4-body.tex settings.tex java.tex
	$(LATEX) $(LFLAGS) java.tex

clean:
	rm -f *.pdf *~

clean-all:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.vrb texput.log *.toc *~
