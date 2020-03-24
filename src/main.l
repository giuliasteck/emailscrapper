%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

[A-Za-z0-9]+([._-]*[A-Za-z0-9]+)*[@]+[A-Za-z0-9]+([._-]*[A-Za-z0-9]+)* { printf("%s\n", yytext); }

[^ \t\r\nA-Za-z0-9][^ \t\r\n]* ;
[^ \t\r\n]*[^ \t\r\nA-Za-z0-9\.] ;
[[:space:]]+ ;
[[:^space:]]+ ;
%%

int main() {
	yylex();
	return 0;
}
