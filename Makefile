CFLAGS=-Wall -Wextra -std=c11 -pedantic -g3
CXXFLAGS=-Wall -Wextra -std=c++17 -pedantic -g3

.PHONY: all
all: example-c example-cxx

example-c: example.c flag.h
	$(CC) $(CFLAGS) -o $@ example.c

example-cxx: example.c flag.h
	$(CXX) $(CXXFLAGS) -x c++ -o $@ example.c

.PHONY: clean
clean:
	rm -rf example-*