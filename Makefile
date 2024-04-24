CC = gcc
CFLAGS = -Wall -Wextra -Werror
LDFLAGS = 

SRCS = main.c item.c
OBJS = $(SRCS:.c=.o)
TARGET = shopping_app

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
    $(CC) $(LDFLAGS) -o $@ $^

%.o: %.c
    $(CC) $(CFLAGS) -c -o $@ $<

clean:
    $(RM) $(TARGET) $(OBJS)
