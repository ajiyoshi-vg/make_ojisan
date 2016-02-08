
all: main
	./main

# lesson2 との差分
# make はもともとC言語などで書かれたソースをビルドするためのツールでした。
# よくある作り方は make 自体の組み込みルールとして設定されていて、書かなくても良い場合があります。
# 例えば、 .o を .c から作るやりかたは make が最初から知っていますので、省略できます。

main : lib.o main.o
	gcc -o main lib.o main.o

clean:
	-rm main *.o
