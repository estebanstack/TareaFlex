# ANALISIS DE SALIDA
Último ejemplo y por tal el que mas se me complicó. Debido a un error en la sintaxis que propuso el libro.
Explico: en este ejemplo se realizó una calculadora en donde se usaba el ejemplo anterior sin el main como parser para reconocer las entradas que introducía el usuario y posteriormente realizar las operaciones correspondientes
tocaba realizar una ejecución diferente para que así se retornara el archivo que se usaba como parser, el codigo compilaba bien pero no hacia bien la operación, retornando numeros demasiado grandes
el error estaba en que en esta linea: "| calclist exp EOL { printf("= %d\n", $2); }" la cual se encargaba de la regla que manejaba la calculadora en esta linea el libro indicaba que se debia usar la posicion 1 ($1) pero esta posición
es el primer elemento de la regla por lo que esto afectaba el resultado de la operación, mientras que la posición 2 ($2) es el valor que devuelve exp del otherwise por lo que es mas apropiado ponerlo.
Ya al momento de ejecución se introdujo "2+3*4" y retornó el resultado esperado 14, dando a entender que la calculadora funcionó con exito.
