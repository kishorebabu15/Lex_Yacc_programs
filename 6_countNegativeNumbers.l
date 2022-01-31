%{ 
    #include<stdio.h>
    int count=0; 
%} 
%% 
-[1-9](\.[0-9]*)? {count++;}
. 
\n {
    printf("\n Count:%d",count);
    exit(0);
    }
%% 
int yywrap (void) { 
 return 1; 
} 
int main() { 
 printf("Enter the numbers:"); 
 yylex(); 
 return 0; 
}