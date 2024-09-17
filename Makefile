TEX_FILES = $(wildcard *.tex)
BIB_FILES = $(wildcard *.bib)
IMG_SRCS = $(wildcard Figures/*.pdf)
FILE := main
OUT  := build

all: seminarpaper.pdf

.PHONY: pdf
seminarpaper.pdf: $(TEX_FILES) $(BIB_FILES) $(IMG_SRCS) Makefile
	pdflatex seminarpaper.tex -interaction=nonstopmode -outdir=$(OUT) -pdf -halt-on-error $(FILE)
	bibtex seminarpaper

clean:
	rm -f *.aux *.bbl *.blg *.log *.pdf
