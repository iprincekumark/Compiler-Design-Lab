%{
#include<stdio.h>
#include<string.h>
%}
%%
^[a-zA-Z_$][a-zA-Z0-9_$]* printf("valid Identifier");
.* printf("Invalid Identifier");
%%
int yywrap(){return 1;}
int main(){
yylex();
return 0;
}
