src = $(wildcard src/*.c)

CFLAGS = -std=c99 -pedantic -Wall
INCLUDES = -Ilib/microtar/src
LDFLAGS = -lm

nest: $(src)
	$(CC) $(CFLAGS) -o $@ src/main.c $(INCLUDES) $(LDFLAGS)

.PHONY: clean
clean:
	rm -f nest
