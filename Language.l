%{
	#include<stdio.h>
	int find = 0;
	
%}

%%
0+1* {find =1;}
0*1+0+ {find =0;}

{}
\n {if(find==1)
 printf("\n The string is accepted. ");
 else
 printf("\n The string is rejected.");
 exit(0);
}

%%


int main(){
	
	printf("\n Enter the string:  ");
	yylex();
}
 int yywrap(){
 	
 	return 1; 
 }