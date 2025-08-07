/*recognize tokens for the calculator and print them out */
%%
"+"    { printf("SUMA\n"); }
"-"    { printf("RESTA\n"); }
"*"    { printf("MULTI\n"); }
"/"    { printf("DIVISION\n"); }
"|"    { printf("ABS\n"); }
[0-9]+ { printf("NUMERO %s\n", yytext); }
\n     { printf("NEWLINE\n"); }
[ \t]  { }
.      { printf("Mystery character %s\n", yytext); }
%%


