CC=gcc

RM=rm -rf

CFLAGS=-c -O3 -g -Iinclude

LDFLAGS=-lm -lvulkan-1 -lglfw3 -lgdi32 -Iinclude -Llib

# Directories
SRC_DIR := ./src
OBJ_DIR := ./bin/obj
BIN_DIR := ./bin

# Find all C source files in the src directory and its subdirectories
SRCS := $(shell find $(SRC_DIR) -name "*.c")

# Generate object file names from source file names
OBJS := $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))

all: $(BIN_DIR)/albedoc.exe

# Compile C source files into object files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@

# Link object files to create the executable
$(BIN_DIR)/albedoc.exe: $(OBJS)
	@mkdir -p $(BIN_DIR)
	$(CC) $(OBJS) -o $@ $(LDFLAGS)

.PHONY: clean
clean:
	-@ $(RM) bin 