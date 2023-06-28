CFLAGS = -std=c++11 -Wall -pedantic

bin/main: bin/main.o bin/game.o bin/object_field.o
	g++ -g -o bin/main bin/main.o bin/game.o bin/object_field.o $(CFLAGS) -lncurses

bin/main.o: src/main.cpp
	mkdir -p bin	
	g++ -g -c -o bin/main.o src/main.cpp $(CFLAGS) 

bin/game.o: src/game.cpp src/game.h src/object_field.h
	mkdir -p bin	
	g++ -g -c -o bin/game.o src/game.cpp $(CFLAGS)

bin/object_field.o: src/object_field.cpp src/object_field.h
	mkdir -p bin	
	g++ -g -c -o bin/object_field.o src/object_field.cpp $(CFLAGS)