%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%
"//".*\n   { lines++; chars += yyleng; }    /* comentario: cuenta línea y caracteres */
[a-zA-Z]+  { words++; chars += yyleng; }
\n         { chars++; lines++; }
.          { chars++; }
%%

int main(void) {
    yylex();
    printf("%d %d %d\n", lines, words, chars);
    return 0;
}

