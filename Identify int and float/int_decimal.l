%{
#include<stdio.h>
#include<string.h>
%}
%%
[0-9]* printf("Integer");
[0-9]*[.][0-9] printf("Decimal or Float");
%%
int yywrap(){return 1;}
int main(){
yylex();
return 0;
}
