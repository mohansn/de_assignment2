all:assignment2.pdf
assignment2.pdf:assignment2.dvi
	dvipdf assignment2.dvi
assignment2.dvi:assignment2.tex circles.tex
	latex assignment2.tex
circles.tex:plotcircles.gnu
	gnuplot -p plotcircles.gnu > circles.tex
circ.eps:plotcircles-eps.gnu
	gnuplot -p plotcircles.gnu > circles.eps
.PHONY:clean
clean:
	-@rm -fv *.log *.aux *.toc *.dvi *.pdf *~
.PHONY:rebuild
rebuild:
	make clean all
