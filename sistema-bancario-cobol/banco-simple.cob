IDENTIFICATION DIVISION.
       PROGRAM-ID. BANCO-SIMPLE.
       AUTHOR. Estefania Ramirez Martinez.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. IBM-PC.
       OBJECT-COMPUTER. IBM-PC.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-CUENTA.
           05  WS-NUMERO-CUENTA    PIC 9(10) VALUE ZEROS.
           05  WS-TITULAR          PIC X(30) VALUE SPACES.
           05  WS-SALDO            PIC 9(7)V99 VALUE ZEROS.
           05  WS-TIPO-CUENTA      PIC X(10) VALUE SPACES.
       
       01  WS-OPERACION.
           05  WS-OPCION           PIC 9 VALUE ZERO.
           05  WS-IMPORTE          PIC 9(7)V99 VALUE ZEROS.
           05  WS-SALDO-TEMP       PIC 9(7)V99 VALUE ZEROS.
       
       01  WS-MENSAJES.
           05  WS-MSG-BIENVENIDA   PIC X(50) VALUE
               '*** SISTEMA BANCARIO - GESTION DE CUENTAS ***'.
           05  WS-MSG-MENU         PIC X(40) VALUE
               '1-Consultar 2-Ingresar 3-Retirar 4-Salir'.
           05  WS-MSG-SALDO        PIC X(20) VALUE 'Saldo actual: '.
           05  WS-MSG-ERROR        PIC X(30) VALUE
               'Error: Saldo insuficiente'.
           05  WS-MSG-EXITO        PIC X(30) VALUE
               'Operacion realizada con exito'.
       
       01  WS-CONTROL.
           05  WS-CONTINUAR        PIC X VALUE 'S'.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM INICIALIZAR-CUENTA
           PERFORM MOSTRAR-BIENVENIDA
           PERFORM MENU-PRINCIPAL UNTIL WS-OPCION = 4
           PERFORM DESPEDIDA
           STOP RUN.
       
       INICIALIZAR-CUENTA.
           MOVE 1234567890 TO WS-NUMERO-CUENTA
           MOVE 'CLIENTE EJEMPLO' TO WS-TITULAR
           MOVE 1000.00 TO WS-SALDO
           MOVE 'CORRIENTE' TO WS-TIPO-CUENTA.
       
       MOSTRAR-BIENVENIDA.
           DISPLAY ' '
           DISPLAY WS-MSG-BIENVENIDA
           DISPLAY ' '
           DISPLAY 'Cuenta: ' WS-NUMERO-CUENTA
           DISPLAY 'Titular: ' WS-TITULAR
           DISPLAY 'Tipo: ' WS-TIPO-CUENTA
           DISPLAY '=================================='
           DISPLAY ' '.
       
       MENU-PRINCIPAL.
           DISPLAY WS-MSG-MENU
           ACCEPT WS-OPCION
           
           EVALUATE WS-OPCION
               WHEN 1
                   PERFORM CONSULTAR-SALDO
               WHEN 2
                   PERFORM REALIZAR-INGRESO
               WHEN 3
                   PERFORM REALIZAR-RETIRADA
               WHEN 4
                   CONTINUE
               WHEN OTHER
                   DISPLAY 'Opcion no valida'
           END-EVALUATE
           DISPLAY ' '.
       
       CONSULTAR-SALDO.
           DISPLAY '--- CONSULTA DE SALDO ---'
           DISPLAY WS-MSG-SALDO WS-SALDO ' EUR'
           DISPLAY '------------------------'.
       
       REALIZAR-INGRESO.
           DISPLAY '--- INGRESO DE EFECTIVO ---'
           DISPLAY 'Importe a ingresar: '
           ACCEPT WS-IMPORTE
           
           IF WS-IMPORTE > 0
               ADD WS-IMPORTE TO WS-SALDO
               DISPLAY WS-MSG-EXITO
               DISPLAY 'Nuevo saldo: ' WS-SALDO ' EUR'
           ELSE
               DISPLAY 'Error: Importe debe ser mayor que 0'
           END-IF
           DISPLAY '-------------------------'.
       
       REALIZAR-RETIRADA.
           DISPLAY '--- RETIRADA DE EFECTIVO ---'
           DISPLAY 'Importe a retirar: '
           ACCEPT WS-IMPORTE
           
           IF WS-IMPORTE > WS-SALDO
               DISPLAY WS-MSG-ERROR
           ELSE
               IF WS-IMPORTE > 0
                   SUBTRACT WS-IMPORTE FROM WS-SALDO
                   DISPLAY WS-MSG-EXITO
                   DISPLAY 'Nuevo saldo: ' WS-SALDO ' EUR'
               ELSE
                   DISPLAY 'Error: Importe debe ser mayor que 0'
               END-IF
           END-IF
           DISPLAY '--------------------------'.
       
       DESPEDIDA.
           DISPLAY ' '
           DISPLAY 'Gracias por utilizar nuestros servicios'
           DISPLAY 'Hasta pronto!'
           DISPLAY ' '.
       
       END PROGRAM BANCO-SIMPLE.