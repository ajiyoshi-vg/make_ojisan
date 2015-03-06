
all: main
	./main

# .o を .c から作るやりかたは make が知っている

main : lib.o main.o
	gcc -o main lib.o main.o

clean:
	-rm main *.o
