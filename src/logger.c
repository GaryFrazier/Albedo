#include "logger.h"

void logError(const char* msg)
{
    printf( RED "%s" RESET, msg );
}

void logSuccess(const char* msg)
{
    printf( GREEN "%s" RESET, msg );
}