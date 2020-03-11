docker run --rm -it -v %cd%:/documents htakeuchi/docker-asciidoctor-jp asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=styles/pdf-style.yml report.adoc
