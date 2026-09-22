# Fast Fourier Transform

## Overview

This project consists of parallelizing a FFT based algorithm that generates a "damped" sound reminiscent of what one can hear underwater.

## Dependencies

- GCC Compiler for C programs.

# Compilation

The project contains two main programs: `fft` and `fftomp`. To compile these programs, a Makefile is provided.

To compile the programs, run:

```bash
make
```

## Execution

After the compilation you can execute the program on X cores as follows :

```bash
./fft --size X --seed X --output X
./fftomp --threads X --size X --seed X --output X
```

The order of the options does not matter.

## Cleaning Build Files

To clean up the build files and remove executables, you can use the clean target in the Makefile:

```bash
make clean
```

## Authors@

- **TAN Philippe** - [Filochet](https://github.com/Filochet)
- **GOGRITCHIANI Lasha** - [LashaGOG](https://github.com/LashaGOG)
