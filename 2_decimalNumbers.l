%{
    #include <stdio.h>
%}
%%
^(\-)?(0|[1-9][0-9]*)(\.[0-9]*[1-9])? {printf("Valid decimal number");}
.* {printf("Invalid decimal number");}
%%
int yywrap() {
    return 1;
}
int main() {
    yylex();
    return 0;
}