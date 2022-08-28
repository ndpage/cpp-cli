CC = g++
BUILD = ./build
SRC = ./src
OBJDIR = $(BUILD)/obj
IDIR = ./include
TARGET = main


main: $(OBJDIR)/main.o
	$(CC) $(OBJDIR)/main.o -o $(BUILD)/main

$(OBJDIR)/main.o: $(SRC)/main.cpp
	$(CC) -c $(SRC)/main.cpp -o $(OBJDIR)/main.o

clean:
	rm $(BUILD)/*
	rm $(OBJDIR)*.o
	
init:
	mkdir $(BUILD)
	mkdir $(OBJDIR)
	mkdir $(SRC)
	mkdir $(IDIR)

run:
	$(BUILD)/$(TARGET)