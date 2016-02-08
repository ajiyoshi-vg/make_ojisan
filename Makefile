
all: main
	./main

main : lib.o main.o
	gcc -o main lib.o main.o

# make の基本書式
# 作りたいファイル名 : 材料
# [TAB]作り方のコマンド

# 例：
# 作りたいファイル : 材料
lib.o : lib.c
	# 作り方
	gcc -o lib.o -c lib.c

main.o : main.c
	gcc -o main.o -c main.c

# 擬似ターゲット
# 「作りたいファイル」ターゲットではなく、
# 「擬似ターゲット」というのをターゲットにすることもできます。
# この場合だと、 `make clean` とすると中間ファイルみたいなのを掃除するコマンドが実行されます。
clean:
	-rm main *.o
