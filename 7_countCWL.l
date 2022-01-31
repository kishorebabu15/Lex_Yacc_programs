%{
#include<stdio.h> 
int words=0,characters=0,lines=0;
%}

%%

[aA-zZ_0-9]*\n {lines++;words++;characters+=yyleng-1;}
[aA-zZ_0-9]+(" "|\t) {words++;characters+=yyleng-1;}
%%

int yywrap(){
    return 1;
}


int main(){
    yyin=fopen("input.txt","r");
    yylex();
    printf("\nCharcater count : %d\nWord count : %d\nLine count : %d",characters,words,lines);
    return 0;
}