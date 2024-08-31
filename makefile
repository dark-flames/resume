RLANG ?= "en"
RVERSION ?= "full"
FILE = "./resume-$(RLANG)-$(RVERSION).pdf"

all: compile

clean : 
	rm -rf *.pdf

compile:
	typst compile --font-path ./fonts main.typ $(FILE) \
		--input x-target=pdf-light \
		--input x-lang=$(RLANG) \
		--input x-version=$(RVERSION)





