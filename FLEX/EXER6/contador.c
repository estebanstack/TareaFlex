#include <stdio.h>
#include <ctype.h>

int main(int argc, char *argv[]) {
    FILE *fp;
    int c;
    long lines = 0, words = 0, chars = 0;
    int in_word = 0;

    if (argc > 1) {
        fp = fopen(argv[1], "r");
        if (fp == NULL) {
            perror("Error al abrir el archivo");
            return 1;
        }
    } else {
        fp = stdin; // Leer de la entrada estándar
    }

    while ((c = fgetc(fp)) != EOF) {
        chars++;

        if (c == '\n') {
            lines++;
        }

        if (isspace(c)) {
            in_word = 0; // Salimos de una palabra
        } else if (!in_word) {
            in_word = 1; // Entramos a una palabra nueva
            words++;
        }
    }

    printf("Líneas: %ld\n", lines);
    printf("Palabras: %ld\n", words);
    printf("Caracteres: %ld\n", chars);

    if (fp != stdin) {
        fclose(fp);
    }

    return 0;
}

