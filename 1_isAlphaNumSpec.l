%{
    #include<stdio.h>
%}
%%
[0-9]+ {printf("Number");}
[a-zA-Z] {printf("Alphabet");}
. {printf("special symbol");}
%%
int yywrap() {
    return 1;
}
int main() {
    yylex();
    return 0;
}