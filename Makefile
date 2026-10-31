.PHONY: build serve new

build:
	squid -t templates -m markdown -s static -o output -v config.toml

serve:
	squid -t templates -m markdown -s static -o output -v config.toml --watch --serve 8080 --drafts

new:
	@if [ -z "$(title)" ]; then echo 'uso: make new title=meu-artigo'; exit 1; fi
	squid -m markdown new posts $(title)
