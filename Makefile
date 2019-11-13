
CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=power.o basicMath.o
FLAGS= -Wall -g

all: mymaths mymathd mains maind	
mains: $(OBJECTS_MAIN) mymaths 
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a
maind: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so
mymathd: $(OBJECTS_LIB)
	$(CC) -shared -o libmyMath.so $(OBJECTS_LIB)
mymaths: $(OBJECTS_LIB)
	$(AR) -rcs libmyMath.a $(OBJECTS_LIB)	
power.o: power.c myMath.h
	$(CC) $(FLAGS) -fPIC -c power.c
basicMath.o: basicMath.c myMath.h 
	$(CC) $(FLAGS) -c basicMath.c 
main.o: main.c myMath.h
	$(CC) $(FLAGS) -c main.c

.PHONY: clean all

clean:
	rm -f *.o *.a *.so *.out mains maind