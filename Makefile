CC=gcc

RM=rm -rf

CFLAGS=-c -Wall -O3

LDFLAGS=-lm

rwildcard=$(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

SOURCES=$(call rwildcard,src,*.c *.h)



OBJDIR=./bin/obj
EXECDIR=./bin

# Make directories (windows)
DIRS=bin bin/obj

$(shell mkdir -p $(DIRS))

all: exec 

$(OBJDIR)/%.o: $(SOURCES)
	$(CC) $(CFLAGS) $< -o $(OBJDIR)/$(notdir $@)

exec: $(OBJDIR)/%.o
	$(CC) $^ $(LDFLAGS) -o $(EXECDIR)/albedoc

.PHONY: clean
clean:
	-@ $(RM) bin 