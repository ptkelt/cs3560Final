
all:
	make build
	make doc

build: wc.o
	g++ wc.o -o count

wc.o: wc.c
	g++ -c wc.c
clean:
	rm *.o count
	rm -r html
	rm -r latex

doc:
	doxygen wc.c
	


	
