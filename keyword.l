%{

#include<stdio.h>
%}

%%
if |
then |
printf |
do |
while |
continue {printf("%s is keyword.", yytext);}
[a-zA-Z]+ {printf("%s is word.", yytext);}
[0-9]+ {printf("%s is a number.", yytext);}
.|\n {ECHO;}

%%

int main(){
	printf("Enter the string \n");
	yylex();
}
 int yywrap(){
 return 1;
 }