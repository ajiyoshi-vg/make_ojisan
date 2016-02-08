
all: main
	./main

# lesson1 との差分
# lib.o と main.o の作り方はほとんど同じなのでまとめてしまいます。
# `%.o : %.c` の意味は、「.o ファイルは同じファイル名で拡張子だけ違う .c ファイルから作る」
# 例えば main.o は main.c から作る。 lib.o は lib.c から作る。
# 作るコマンドのなかで、作りたいファイル名($@) や 材料のファイル名($<) のマクロを使えます。

# 作りたいファイル : 材料
%.o : %.c
	# 作り方
	gcc -o $@ -c $<

main : lib.o main.o
	gcc -o main lib.o main.o

clean:
	-rm main *.o
