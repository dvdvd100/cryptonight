#!/bin/bash

gcc -O3 -c -fPIC -o cryptonight/aesb.o cryptonight/aesb.c
gcc -O3 -c -fPIC -o cryptonight/blake256.o cryptonight/blake256.c
gcc -O3 -c -fPIC -o cryptonight/groestl.o cryptonight/groestl.c
gcc -O3 -c -fPIC -o cryptonight/hash.o cryptonight/hash.c
gcc -O3 -c -fPIC -o cryptonight/hash-extra-blake.o cryptonight/hash-extra-blake.c
gcc -O3 -c -fPIC -o cryptonight/hash-extra-groestl.o cryptonight/hash-extra-groestl.c
gcc -O3 -c -fPIC -o cryptonight/hash-extra-jh.o cryptonight/hash-extra-jh.c
gcc -O3 -c -fPIC -o cryptonight/hash-extra-skein.o cryptonight/hash-extra-skein.c
gcc -O3 -c -fPIC -o cryptonight/jh.o cryptonight/jh.c
gcc -O3 -c -fPIC -o cryptonight/keccak.o cryptonight/keccak.c
gcc -O3 -c -fPIC -o cryptonight/oaes_lib.o cryptonight/oaes_lib.c
gcc -O3 -c -fPIC -o cryptonight/skein.o cryptonight/skein.c
gcc -O3 -c -fPIC -o cryptonight/slow-hash.o cryptonight/slow-hash.c -march=native -mtune=generic
gcc -O3 -c -fPIC -o cryptonight.o cryptonight.c

gcc -O3 -shared -o ../x64/Release/cryptonight.so cryptonight.o cryptonight/slow-hash.o cryptonight/aesb.o cryptonight/blake256.o cryptonight/groestl.o cryptonight/hash.o cryptonight/hash-extra-blake.o cryptonight/hash-extra-groestl.o cryptonight/hash-extra-jh.o cryptonight/hash-extra-skein.o cryptonight/jh.o cryptonight/keccak.o cryptonight/oaes_lib.o cryptonight/skein.o

rm -f cryptonight.o
rm -f cryptonight/slow-hash.o
rm -f cryptonight/aesb.o
rm -f cryptonight/blake256.o
rm -f cryptonight/groestl.o
rm -f cryptonight/hash.o
rm -f cryptonight/hash-extra-blake.o
rm -f cryptonight/hash-extra-groestl.o
rm -f cryptonight/hash-extra-jh.o
rm -f cryptonight/hash-extra-skein.o
rm -f cryptonight/jh.o
rm -f cryptonight/keccak.o
rm -f cryptonight/oaes_lib.o
rm -f cryptonight/skein.o
