#pragma once
#include "common.h"

typedef struct _Argument {
    uint16 length;
    char* value;
} Argument;

enum TokenType {
    TPrint
};

typedef struct _Token {
    enum TokenType type;
    uint8 argLength;
    Argument* arguments;
} Token;


Token* ParseTokens(uint32 length, char* text);