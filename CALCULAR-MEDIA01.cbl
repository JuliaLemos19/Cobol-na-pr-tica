           IDENTIFICATION DIVISION.
           Program-Id.          CALCULAR-MEDIA01.
           Author.              BERGAMASCHI, MARCELO.
           Date-Written.        05-03-1999.
           Date-Compiled.      
           Installation.        UNISANTA SANTOS.
           Security.            PROGRAMA EXEMPLO DE CODIGO COBOL CALCULAR A MEDIA A PARTIR DE 4 NOTAS.
               
               
           Environment Division.
           Configuration Section.
           
           Special-Names.
           
           Decimal-Point Is Comma.
             
             
            Data Division.
           
            Working-Storage Section.
            77 P1             Pic 9(02)V9 Value Zeros.
            77 P2             Pic 9(02)V9 Value Zeros.
            77 P3             Pic 9(02)V9 Value Zeros.
            77 P4             Pic 9(02)V9 Value Zeros.
            77 MEDIA          Pic 9(02)V9 Value Zeros.
            77 MASCARA        Pic Z9,9.
            
            

               
           Procedure Division. 
           INICIO.        
          
            Display "Digite a 1¦ nota: ".
            Accept P1.
            Display  "Digite a 2¦ nota: ".
            Accept  P2.
            Display  "Digite a 3¦ nota: ".
            Accept  P3.
            Display "Digite a 4 nota: ". 
            Accept P4.
               
               
           Compute MEDIA = (P1 + P2 + P3 + P4) / 4. 
           Move MEDIA To MASCARA.
           Display "A Media, ", MASCARA.
           Stop Run.
           
           
          
           END PROGRAM CALCULAR-MEDIA01.
