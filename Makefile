CC := gcc
SRC := pzip.c

CFLAGS := -Wall -Werror -O2
DEBUG_FLAG := -DDEBUG
DEBUG_CFLAGS := -Wall -g -O0 $(DEBUG_FLAG)

.PHONY: all pzip debug clean

all: pzip

pzip: $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o pzip

debug: $(SRC)
	$(CC) $(DEBUG_CFLAGS) $(SRC) -o pzip

clean:
	rm -f pzip
