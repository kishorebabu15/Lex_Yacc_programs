%{
    #include<stdio.h>
%}
%%
^(\-)?(0|1[0-1]*)(\.[0-1]*1)? {printf("Valid Binary number");}
.* {printf("Invalid binary number");}
%%
int yywrap() {
    return 1;
}
int main()
{
    yylex();
    return 0;
}