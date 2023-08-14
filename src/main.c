#include "common.h"
#include "main.h"
#include "tokenizer.h"

int main(void)
{
    printf("Hello World!\n");
    Token* tokens = ParseTokens(1, "arg");
    printf("%s", tokens[0].arguments[0].value);

}