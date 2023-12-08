CC = gcc

CCFLAGS = -g -O3 -fopenmp -Wall -Wextra -c
COFLAGS = -g -fopenmp -Wall -Wextra -o

# Update here the binary files list
PROGRAMSB = fft.o

# Update here the executable files list
PROGRAMSE = fft

% : %.c 
	$(CC) $(COFLAGS) $@ $< -lm

%.o : %.c
	$(CC) $(CCFLAGS) $< -o ./bin/$@ -lm

# Rule that compiles all the executables
allexe : $(PROGRAMSE)

# Rule that creates the folder "bin" if it doesn't exist then compiles all the code files into binaries
allbin : | bin $(PROGRAMSB)

bin :
	mkdir -p bin

clean : 
	rm -f *.o
	rm -f ./bin/*.o
	rm -rf ./bin
	rm -f $(PROGRAMS)