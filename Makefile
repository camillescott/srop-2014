FORMAT=tex_math_dollars
GEOPARAMS=-V geometry:margin=1in -V fontsize:12pt 
LATEXPARAMS=--latex-engine=xelatex #-V mainfont="DejaVu Serif"

RST=2014-05-01-summer-stats-meeting 2014-05-06-meeting

all: $(patsubst %, %.pdf, $(RST)) $(patsubst %, %.pdf, $(MD))

clean:
	rm *.pdf

%.pdf: %.rst
	pandoc $(LATEXPARAMS) $< -o $@

%.pdf: %.md
	pandoc $< -o $@
