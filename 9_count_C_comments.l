%{
    #include <stdio.h>
    #include <stdlib.h>
    int singleline_comments = 0;
    int multiline_comments = 0;
%}

%%
"//".* {singleline_comments++;}
"/*"[^\n]*"*/" {singleline_comments++;}
"/*"[^*/]*"*/" {multiline_comments++;}
. ;
%%

int yywrap( ) 
{
    return 1;
}
void main( ) 
{
    yyin = fopen("input.c","r");
    yylex();
    printf("Number of single line comments = %d \n", singleline_comments);
    printf("Number of multi line comments = %d\n", multiline_comments);
    
}