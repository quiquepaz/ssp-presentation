PROJECT=slides

all: clean compile

compile:
	rubber --pdf ${PROJECT}.tex

clean:
	rm -rf *.pdf *.log *.dvi *.out *.aux *.dvi *.nav *.snm *.toc *.ps

aspell:
	aspell -d en_US -t -c ${PROJECT}.tex
