%{
#include<stdio.h>
#include<string.h>
char word[] = "geeks";
int count = 0;
%}

%%

[a-zA-Z]+ { if(strcmp(yytext, word) == 0) count++; }
. ;    

%%

int yywrap()
{
    return 1;
}

int main()
{
    FILE *yyin;
    yyin = fopen("input.txt", "r");
    if(yyin == NULL) {
        perror("Error opening file");
        return 1;
    }
    yyin = stdin; // Use stdin if "input.txt" is not available
    yylex();
    printf("%d\n", count);
    fclose(yyin); // Close the file
    return 0;
}
