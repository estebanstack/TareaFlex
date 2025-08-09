%{
#include <stdio.h>
#include <string.h>   // Para strlen()
FILE *yyin;           // Entrada para Flex

int chars = 0;
int words = 0;
int lines = 0;
%}

%%

[a-zA-Z]+ { words++; chars += strlen(yytext); }
\n        { chars++; lines++; }
.         { chars++; }

%%

int main(int argc, char **argv)
{
    if (argc > 1) {
        FILE *fp = fopen(argv[1], "r");
        if (!fp) {
            perror("No se pudo abrir el archivo");
            return 1;
        }
        yyin = fp; // Flex leerá desde este archivo
    }

    yylex();

    printf("Lineas: %d  Palabras: %d  Caracteres: %d\n", lines, words, chars);

    return 0;
}

