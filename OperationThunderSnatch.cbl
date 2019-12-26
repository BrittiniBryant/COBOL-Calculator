      ******************************************************************
      * Author: Britt
      * Date: 12-16-19
      * Purpose: To practice COBOL
      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERATION-THUNDER-SNATCH.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 USER-OPTION           PIC 9 VALUE ZERO.
       01 USER-NUM1             PIC 9(5)V9(2) VALUE ZERO.
       01 USER-NUM2             PIC 9(5)V9(2) VALUE ZERO.
       01 RESULT                PIC 9(10)V9(2) VALUE ZERO.

       PROCEDURE DIVISION.
            DISPLAY "----------------------------".
            DISPLAY "THIS IS MY FIRST COBOL PROJECT. A CALCULATOR.".
            DISPLAY "TO ADD NUMBERS, ENTER 1".
            DISPLAY "TO SUBTRACT, ENTER 2".
            DISPLAY "TO MULTIPLY, ENTER 3".
            DISPLAY "TO DIVIDE, ENTER 4.".
            DISPLAY "TO GET THE HECK OUT OF HERE, ENTER 5.".
            DISPLAY "----------------------------".
            ACCEPT USER-OPTION.

            IF USER-OPTION = 5
                DISPLAY "EXITING OUT OF THE CALCULATOR NOW!"
                STOP RUN
            END-IF.


            DISPLAY "ENTER THE FIRST NUMBER: ".
            ACCEPT USER-NUM1.
            DISPLAY "ENTER THE SECOND NUMBER: ".
            ACCEPT USER-NUM2.

            IF USER-OPTION = 1
              COMPUTE RESULT = USER-NUM1 + USER-NUM2
            ELSE
              IF USER-OPTION = 2
                 COMPUTE RESULT = USER-NUM1 - USER-NUM2
               ELSE
                 IF USER-OPTION = 3
                    COMPUTE RESULT = USER-NUM1 * USER-NUM2
                  ELSE
                    IF USER-OPTION = 4
                       COMPUTE RESULT = USER-NUM1 / USER-NUM2
                    END-IF
               END-IF
             END-IF
           END-IF.


             DISPLAY " ".
             DISPLAY RESULT.




            STOP RUN.
       END PROGRAM OPERATION-THUNDER-SNATCH.
