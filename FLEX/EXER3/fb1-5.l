%{
#include "fb1-5.tab.h"  /* Incluye los tokens generados por Bison*/
#include <stdlib.h>
%}

%%
"&&"   { return AND; }
"&"    { return AND; }
"|"    { return '|';  } 
"+"    { return ADD; }
"-"    { return SUB; }
"*"    { return MUL; }
"/"    { return DIV; }
"a"    { return ABS; }
[0-9]+ { yylval = atoi(yytext); return NUMBER; }
"0x"[a-fA-F0-9]+  { yylval = strtol(yytext, NULL, 16); return NUMBER; }
\n     { return EOL; }
[ \t]  { /* ignore whitespace */ }
.      { printf("Mystery character %c\n" , *yytext); }
%%



