#! /bin/bash
wget https://www.open-mpi.org/papers/workshop-2006/hello.c
mpicc hello.c -o hello
mpirun --allow-run-as-root -np 4 ./hello