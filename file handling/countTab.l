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
extern FILE *yyin , *yyout;
yyin=fopen("Input_text.txt","r");
yyout=fopen("text.txt","w");
yylex();
fprintf(yyout,"\n no of lines =%d",l);
fprintf(yyout,"\n no of spaces =%d",s);
fprintf(yyout,"\n no of tabs=%d",t);
fprintf(yyout,"\n no of char=%d\n",c);
return 0;
}

 
