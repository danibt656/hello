exec = hello.out
sources = $(wildcard src/*.c)
objects = $(sources:.c=.o)
flags = -g -Wall


$(exec): $(objects)
	gcc $(objects) $(flags) -o $(exec)

%.o: %.c include/%.h
	gcc -c $(flags) $< -o $@

#install:
#	make
#	cp ./hello.out /usr/local/bin/hello

clean:
	rm $(exec)
	rm *.o
	cd src; rm *.o
