RLANG ?= "en"
RVERSION ?= "full"
FILE = "./resume-$(RLANG)-$(RVERSION).pdf"

all: cv resume full

clean : 
	rm -rf *.pdf

compile:
	typst compile --font-path ./fonts main.typ $(FILE) \
		--input x-target=pdf-light \
		--input x-lang=$(RLANG) \
		--input x-version=$(RVERSION)

cv:
	typst compile --font-path ./fonts main.typ cv-en.pdf \
		--input x-target=pdf-light \
		--input x-lang=en \
		--input x-version=cv

resume:
	typst compile --font-path ./fonts main.typ resume-en.pdf \
		--input x-target=pdf-light \
		--input x-lang=en \
		--input x-version=resume

full:
	typst compile --font-path ./fonts main.typ resume-full-en.pdf \
		--input x-target=pdf-light \
		--input x-lang=en \
		--input x-version=full





