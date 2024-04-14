#Makefile IZU Project
#Marek Gergel (xgerge01)

LOGIN := xgerge01

.PHONY: all tree clean zip tar

all: graph

graph: $(LOGIN).dot
	dot -Tpdf $< -o $(LOGIN).pdf

clean:
	rm -f $(LOGIN).zip $(LOGIN).tar

zip: graph
	zip -rq $(LOGIN).zip $(LOGIN).md $(LOGIN).pdf

tar: graph
	tar -cf $(LOGIN).tar $(LOGIN).md $(LOGIN).pdf