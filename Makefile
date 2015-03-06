
all: main
	./main

# 作りたいファイル : 材料
%.o : %.c
	# 作り方
	gcc -o $@ -c $<

main : lib.o main.o
	gcc -o main lib.o main.o

clean:
	-rm main *.o
