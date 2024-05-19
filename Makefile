# Makefile for the shopping cart application


CC = gcc


CFLAGS = -Wall -Wextra -pedantic -std=c99

SRC = main.c


OUT = shopping_cart


all: $(OUT)


$(OUT): $(SRC)
	$(CC) $(CFLAGS) -o $(OUT) $(SRC)


clean:
	rm -f $(OUT)


run: $(OUT)
	./$(OUT)

# Phony targets
.PHONY: all clean run
