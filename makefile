CC = gcc
MPI = mpicc

CCFLAGS = -g -O3 -Wall -Wextra -c
COFLAGS = -g -Wall -Wextra -o

PROGRAMS = fft

% : %.c 
	$(CC) $(COFLAGS) $@ $< -lm

%.o : %.c
	$(CC) $(CCFLAGS) $< -o ./bin/$@ -lm

all : $(PROGRAMS)

clean : 
	rm -f *.o
	rm -f ./bin/*.o
	rm -f $(PROGRAMS)