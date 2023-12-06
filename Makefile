all: clean compile

compile: clean
	cd libs/; gcc -c *.c
	gcc main.c libs/*.o -o main.out

compile-debug: clean
	cd libs/; gcc -g -c *.c
	gcc -g main.c libs/*.o -o main.out

clean:
	rm -f *.o libs/*.o
	rm -f main.out