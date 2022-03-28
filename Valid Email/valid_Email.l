%{
#include<stdio.h>
#include<string.h>
%}
%%
^[a-zA-Z0-9][a-z0-9_]*[@][a-z0-9][a-z0-9]*[.]*[a-z][a-z]* printf("Valid Email");
.* printf("Invalid Email");
%%
int yywrap(){return 1;}
int main(){
yylex();
return 0;
}
