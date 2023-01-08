# create a makefile to compile main.cpp

# define the compiler
# CC = g++
CC = aarch64-linux-gnu-g++

# define the compiler flags
CFLAGS = -Wall -g

# define the target
TARGET = hello-snap

# define the source files
SRCS = main.cpp

# compile the target
$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCS)

# install the target
install:
	install -m 755 $(TARGET) $(DESTDIR)

# clean the directory
clean:
	rm -f $(TARGET)