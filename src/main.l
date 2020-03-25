%{
#include <stdio.h>
#include <stdlib.h>
%}

ALFANUM [A-Za-z0-9]+
EMAIL {ALFANUM}([._-]*{ALFANUM})*[@]+{ALFANUM}([._-]*{ALFANUM})* 
	
%%

{EMAIL} { printf("%s\n", yytext); }

[^ \t\r\nA-Za-z0-9][^ \t\r\n]* ;
[^ \t\r\n]*[^ \t\r\nA-Za-z0-9\.] ;
[[:space:]]+ ;
[[:^space:]] ;
%%

int main() {
	yylex();
	return 0;
}
