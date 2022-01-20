.PHONY: clean

c:
	x86_64-w64-mingw32-gcc -v -c hello.c -o bin/hello_c.o
	objdump -t bin/hello_c.o

nim:
	nim c --noLinking=on --nimcache:nimcache -d=danger -d=mingw --cpu=amd64 -d=strip --passl=-flto --opt=size --out=hello.o hello.nim
	cd nimcache/
	objdump -x @mhello.nim.c.o

clean:
	rm -rf bin/*
