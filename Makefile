
all: main
	./main

# 作りたいファイル : 材料
lib.o : lib.c
	# 作り方
	gcc -c lib.c

main.o : main.c
	gcc -c main.c

main : lib.o main.o
	gcc -o main lib.o main.o

clean:
	-rm main *.o
