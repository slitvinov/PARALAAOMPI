.POSIX:
.SUFFIXES:
.SUFFIXES: .o
.SUFFIXES: .cpp

O =\
WaveEquation.o\
ParallelRoutines.o\
MatrixHelper.o\

1 =\
MatrixHelper.h\
ParallelRoutines.h\

MPICXX = mpic++
CXXFLAGS = -O2 -g
.cpp.o:; $(MPICXX) $(CXXFLAGS) -I. -c $<
wave: $O; $(MPICXX) -o $@ $O
$O: $1
clean:; rm -f $O wave
