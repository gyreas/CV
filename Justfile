website  := "gyreas.github.io"
name     := "Saheed-Adeleye"
pdfname  := name + ".pdf"
htmlname := name + ".html"

upload: compile-pdf
	echo "github.token=$GITHUB_TOKEN"
	gh repo clone 'https://github.com/gyreas/{{website}}'

	cp {{pdfname}} '{{website}}/assets/{{pdfname}}'

	cd '{{website}}/';                                        \
	  git add 'assets/{{pdfname}}';                           \
	  git commit -m "updated CV [pdf]" 'assets/{{pdfname}}';  \
	  git push;

compile-pdf:
	typst compile --format pdf main.typ {{pdfname}}

compile-html:
	typst compile --format html {{htmlname}}
