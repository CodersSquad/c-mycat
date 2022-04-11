# Lab Build and Test automation

CC     = gcc
CFLAGS = -I.
DEPS   =
OBJ    = mycat.o

build: mycat

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

mycat: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	rm -f word-reverser word-reverser.o

test: mycat
	@echo Test 1 - Simple file
	./mycat mycat.c
	@echo Test 2 - 1 Gb file
	openssl rand -out sample.txt -base64 805306368
	./mycat sample.txt > output.txt

