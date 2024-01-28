CC = gcc
CFLAGS = -Wall -pedantic -std=gnu99 -Werror -I/local/courses/csse2310/include
LDFLAGS = -L/local/courses/csse2310/lib -lcsse2310a3
DEBUG = -g
TARGETS = testuqwordladder

.DEFAULT_GOAL := all 
.PHONY: all debug clean
all: $(TARGETS)

debug: CFLAGS += $(DEBUG)
debug: clean testuqwordladder

testuqwordladder.o: testuqwordladder.c
	$(CC) $(CFLAGS) -c $^ -o $@

testuqwordladder: testuqwordladder.o
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

clean:
	rm -f $(TARGETS) *.o
