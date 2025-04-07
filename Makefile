# Compiler
CC = gcc
TARGET = fileio

all: $(TARGET)

$(TARGET): main.c
	$(CC) main.c -o $(TARGET)

clean:
	rm -f $(TARGET)

test: $(TARGET)
	bash test.sh

