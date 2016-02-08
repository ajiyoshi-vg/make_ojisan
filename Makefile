
all: main
	./main

# 実は .o から実行ファイルを作るやり方も make が知っており、省略できます。

main : lib.o main.o

clean:
	-rm main *.o
