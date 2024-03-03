RLANG ?= "en"
RVERSION ?= "full"
FILE = "./resume-$(RLANG)-$(RVERSION).pdf"

all: config compile clean-config

clean : 
	rm -rf *.pdf

clean-config :
	rm -rf config.typ

config:
	echo "#let lang = \"$(RLANG)\"\n#let version = \"$(RVERSION)\"" > config.typ

compile: config
	typst compile --font-path ./fonts main.typ $(FILE) 



