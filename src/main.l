%{
#include <stdio.h>

%}

STRING [a-zA-Z0-9]+

%%

{STRING}([-_.]*{STRING})*[@]{STRING}([.-_]*{STRING})* { printf("%s\n", yytext); }

. ;
[[:space:]]+ ;
[[:^space:]]+ ;

%%

int main() {
  yylex();
  return 0;
}
