LANGS = en cn
VERSIONS = cv resume full
TARGETS = $(foreach lang,$(LANGS),$(addsuffix -$(lang),$(VERSIONS)))

all: clean $(TARGETS)

clean : 
	rm -rf *.pdf

$(TARGETS):
	$(eval VERSION := $(word 1,$(subst -, ,$@)))
	$(eval LANG := $(word 2,$(subst -, ,$@)))
	$(eval OUTPUT := $(VERSION)-$(LANG).pdf)
	typst compile --font-path ./fonts main.typ $(OUTPUT) \
		--input x-target=pdf-light \
		--input x-lang=$(LANG) \
		--input x-version=$(VERSION)