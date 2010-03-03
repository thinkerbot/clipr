/* Prevent the inclusion of ruby headers via usrsetup.h */
#ifndef RUBY_HEADERS
#define RUBY_HEADERS 1
#endif

#include "clips.h"
#include <stdio.h>

int main()
{
  void *theEnv = CreateEnvironment();
  EnvFacts(theEnv, "stdout", NULL, 0, -1, -1);
  EnvAssertString(theEnv, "(key value)");
  EnvAssertString(theEnv, "(key one)");
  EnvFacts(theEnv, "stdout", NULL, 0, -1, -1);
  
  EnvClear(theEnv);
  EnvFacts(theEnv, "stdout", NULL, 0, -1, -1);
  EnvAssertString(theEnv, "(key value)");
  EnvAssertString(theEnv, "(key two)");
  EnvFacts(theEnv, "stdout", NULL, 0, -1, -1);
  return(0);
}