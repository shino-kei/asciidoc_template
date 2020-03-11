
# TARGETS := $(wildcard ./*.adoc)

name = readme.adoc

all: html pdf


html: $(name)
	docker run --rm -it -v ${PWD}:/documents htakeuchi/docker-asciidoctor-jp asciidoctor $< -a data-uri

pdf: $(name)
	docker run --rm -it -v ${PWD}:/documents htakeuchi/docker-asciidoctor-jp asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=styles/pdf-style.yml readme.adoc
	
host:
	docker run -d -p 8000:80  -v ${PWD}:/usr/share/nginx/html nginx
