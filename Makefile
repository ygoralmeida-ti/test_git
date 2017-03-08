#Makefile for "test" C++ application
#Created by Ygor Almeida 03/07/2017

PROG = test1

SRC = src
INC = include
BIN = bin
BUILD = build

SOURCE = $(wildcard $(SRC)/*.cpp)
OBJECT = $(patsubst %,$(BUILD)/%, $(notdir $(SOURCE:.cpp=.o)))

CC = g++

CPPFLAGS = -Wall -pedantic -ansi -I$(INC)

$(BIN)/$(PROG) : $(OBJECT)
	$(CC) -o $@ $^

$(BUILD)/%.o : $(SRC)/%.cpp
	$(CC) $(CPPFLAGS) -c $< -o $@

#.PHONY :

#run : $(BIN)/$(PROG)
#	$(BIN)/$(PROG)

clean :
	rm -f $(OBJECT) $(BIN)/$(PROG)


