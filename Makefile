# Option 1
#SHELL=/bin/bash

#Option 2: This is default
#SHELL=/bin/sh


# If not working please install mingw package
# -  I added \MinGW\bin in both sys and user variables.
# - Also added \MinGW\msys\2.0\usr\bin in both sys and user variables.
# Then I got the msys make shell commands plus the gcc working as usual without any errors like (file not found.)

#Chapter 8
# origin:
# 	$(cc) -o origin.exe origin.c

# clean:
# 	rm origin.exe origin.o

#Chapter 9
#Variables: Variables can only be strings. You'll typically want to use :=, but = also works
# files := file1 file2
# some_file: $(files)
# 	echo "Look at this variable: " $(files)
# 	touch some_file

# file1:
# 	touch file1
# file2:
# 	touch file2

# clean:
# 	rm -f file1 file2 some_file

#Chapter 10
#Single or double quotes have no meaning to Make. They are simply characters that are assigned to the variable. Quotes are useful to shell/bash, though, and you need them in commands like printf. In this example, the two commands behave the same:
# a := one two # a is assigned to the string "one two"
# b := 'one two' # Not recommended. b is assigned to the string "'one two'"
# all:
# 	printf '$a'
# 	printf $b

#Chapter 11
#Reference variables using either ${} or $()
# x := dude

# all:
# 	echo $(x)
# 	echo ${x}

# 	# Bad practice, but works
# 	echo $x 

#Chapter 12
#Making multiple targets and you want all of them to run? Make an all target. Since this is the first rule listed, it will run by default if make is called without specifying a target.
# all: one two three

# one:
# 	touch one
# two:
# 	touch two
# three:
# 	touch three

# clean:
# 	rm -f one two three

#Chapter 13
#Multiple Targets - When there are multiple targets for a rule, the commands will be run for each target. $@ is an automatic variable that contains the target name.
# all: f1.o f2.o

# f1.o f2.o:
# 	echo $@
# # Equivalent to:
# # f1.o:
# #	 echo f1.o
# # f2.o:
# #	 echo f2.o

#Chapter 14
# Wildcards - * 
## * may be used in the target, prerequisites, or in the wildcard function.
## Danger: * may not be directly used in a variable definitions
## Danger: When * matches no files, it is left as it is (unless run in the wildcard function)
## Print out file information about every .c file
# print: $(wildcard *.c)
# 	ls -la  $?


##Chapter 15
## Automatic Variables
# hey: one two
# 	echo # Outputs "hey", since this is the target name
# 	echo $@
    
# 	echo # Outputs all prerequisites newer than the target
# 	echo $?

# 	echo # Outputs all prerequisites
# 	echo $^

# 	touch hey
# one:
# 	touch one
# two:
# 	touch two
# clean:
# 	rm -f hey one two

#Chapter 16
# CC = gcc # Flag for implicit rules
# CFLAGS = -g # Flag for implicit rules. Turn on debug info

# Implicit rule #1: blah is built via the C linker implicit rule
# Implicit rule #2: blah.o is built via the C compilation implicit rule, because blah.c exists
# blah: blah.o

# blah.c:
# 	echo "int main() { return 0; }" > blah.c

# clean:
# 	rm -f blah*