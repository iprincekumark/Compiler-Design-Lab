%{
#include<stdio.h>
%}
%%
\/\/(.*) {};			
\/\*(.*\n)*.*\*\/  {};	
%%
int yywrap(){
return 1;
}
int main(void){
yyin=fopen("input.c","r");
yyout=fopen("output.c","w");

yylex();
return 0;
}
