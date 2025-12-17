CC = gcc
CFLAGS = -Iinclude -Wall -Wextra
SRC = src/main.c src/exercises/conditional_statements.c src/exercises/for_loops.c src/exercises/while_loops.c src/exercises/do_while_loops.c
OBJ = $(SRC:.c=.o)
TARGET = school_project

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean