%{
	#include<stdio.h>
%}

%%
[A-Z]+[\t\n ] { printf("%s",yytext); }
.  ;
%%
Int yywrap(){}
int main( ) 
{
	printf("Enter the input string:\n");
	yylex();
}
