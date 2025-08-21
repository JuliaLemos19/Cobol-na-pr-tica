       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULAR-IMPOSTO.
       AUTHOR. BERGAMASCHI, MARCELO.
       DATE-WRITTEN. 05-03-1999.
       INSTALLATION. UNISANTA SANTOS.
       SECURITY. PROGRAMA EXEMPLO DE CÓDIGO COBOL PARA CALCULAR IMPOSTO.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 Salario      PIC 9(5)V99 VALUE 0,00.
       77 Mascara      PIC 9V9 VALUE 0,0.

       PROCEDURE DIVISION.
       INICIO.

           DISPLAY "Digite o salario: ".
           ACCEPT Salario.

           IF Salario <= 2640,00
               DISPLAY "Isento"
           ELSE
               IF Salario > 2640,00 AND Salario <= 3520,00
                   MOVE 7,5 TO Mascara
                   DISPLAY "Imposto de ", Mascara, "%"
               ELSE
                   IF Salario > 3520,00 AND Salario <= 4560,00
                       MOVE 15,0 TO Mascara
                       DISPLAY "Imposto de ", Mascara, "%"
                   ELSE
                       IF Salario > 4560,00 AND Salario <= 6750,00
                           MOVE 22,5 TO Mascara
                           DISPLAY "Imposto de ", Mascara, "%"
                       ELSE
                           IF Salario > 6750,00
                               MOVE 27,5 TO Mascara
                               DISPLAY "Imposto de ", Mascara, "%"
                           END-IF
                       END-IF
                   END-IF
               END-IF
           END-IF.

           STOP RUN.

       END PROGRAM CALCULAR-IMPOSTO.
