#!/bin/bash


# This script creates a new directory, moves all text files from the current directory into it, and then lists the contents of the directory

# First let's create 3 .txt files called class1.txt, book1.txt and test1.txt
 touch class1.txt book1.txt test1.txt

# Create a new directory called "text_files"
mkdir Class35Team1

# Move all text files from the current directory to the "text_files" directory
mv *.txt Class35Team1

# List the contents of the "text_files" directory
ls Class35Team1
