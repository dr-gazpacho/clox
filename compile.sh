#!/bin/bash

# Set compiler flags
CFLAGS="-Wall -Wextra -I."

# Compile all .c files into object files
for file in *.c
do
    echo "Compiling $file..."
    clang $CFLAGS -c "$file" -o "${file%.c}.o"
done

# Link all object files into a single executable
echo "Linking object files..."
clang *.o -o my_program

# Run the program
echo "Running the program..."
./my_program

# Clean up object files
echo "Cleaning up..."
rm *.o
