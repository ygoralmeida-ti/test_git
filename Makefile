#Makefile for "test" C++ application
#Created by Ygor Almeida 03/07/2017

PROG = test
CC = g++
CPPFLAGS = -Wall -pedantic -ansi
OBJS = main.o calcula.o mostra.o

$(PROG):$(OBJS)
	$(CC) -o $(PROG) $(OBJS)

main.o:
	$(CC) $(CPPFLAGS) -c main.cpp

cacula.o:calcula.h
	$(CC) $(CPPFLAGS) -c calcula.cpp

mostra.o:mostra.h
	$(CC) $(CPPFLAGS) -c mostra.cpp

clean:
	rm -f core $(PROG) $(OBJS)