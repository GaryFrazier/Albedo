#include "tokenizer.h"

Token* ParseTokens(uint32 length, char* text) 
{
   unsigned short size = 6;
   char* argString = "Hemlo\n";
   
   Argument arg = { .length = size, .value = argString};
   Argument* argList = malloc(1 * sizeof(Argument));
   argList[0] = arg;
   Token t1 = { .argLength = 1, .arguments = argList};
   t1.argLength = 1;
    
   Token* tokenList = malloc(1 * sizeof(Token));
   tokenList[0] = t1;

   return tokenList;
}