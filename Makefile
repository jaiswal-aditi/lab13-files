# Compiler
CC = g++
TARGET = election

all: $(TARGET)

$(TARGET): election.cpp
	$(CC) election.cpp -o $(TARGET)

clean:
	rm -f $(TARGET)

test: $(TARGET)
	bash test.sh
