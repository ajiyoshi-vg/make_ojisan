
all: main
	./main

main : lib.o main.o
	gcc -o main lib.o main.o

# 作りたいファイル : 材料
lib.o : lib.c
	# 作り方
	gcc -o lib.o -c lib.c

main.o : main.c
	gcc -o main.o -c main.c

clean:
	-rm main *.o
