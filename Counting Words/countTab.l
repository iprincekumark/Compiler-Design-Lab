%{
#include<stdio.h>
int l,t,c,s;
%}
%%
\n  {l++;}
[ ] {s++;}
\t {t++;}
.   {c++;}
%%
int yywrap(){return 1;}
int main(){

yylex();
printf("\n no of lines =%d",l);
printf("\n no of spaces =%d",s);
printf("\n no of tabs=%d",t);
printf("\n no of char=%d\n",c);
return 0;
}

 
