%{
    #include<stdio.h>
%}
%%
^[_a-zA-Z]+[_a-zA_Z0-9]* {printf("valid identifier");}
.* {printf("Invalid identifier");}
%%
int yywrap() 
{
    return 1;
}
int main(){
    yylex();
    return 0;
}