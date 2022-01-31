%{
    #include<stdio.h>
    #include<string.h>
    int count=0;
%}
%%
[a-zA-Z]+ {
    if(yyleng<8 && yyleng>3)
    count++;
    }
\n {printf("\n Count:%d",count);}
%%
int yywrap(){
    return 1;
}


int main(){
printf("Enter the string\n");
yylex();
return 0;
}