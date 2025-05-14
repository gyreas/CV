name     := "Saheed-Adeleye"
pdfname  := name + ".pdf"
htmlname := name + ".html"

upload: compile-pdf
	@cp --verbose $CV_DIR/assets/{{pdfname}} $WEBSITE_DIR

	cd '{{WEBSITE_DIR}}/';                                    \
	  git add 'assets/{{pdfname}}';                           \
	  git commit -m "updated CV [pdf]" 'assets/{{pdfname}}';  \
	  git push;

compile-pdf:
	cd $CV_DIR; typst compile --format pdf main.typ {{pdfname}}

compile-html:
	typst compile --format html {{htmlname}}
