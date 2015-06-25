      * COBOL
        IDENTIFICATION DIVISION.
        PROGRAM-ID.    FizzBuzz.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01  i                   PIC 999.
        01  q                   PIC 99.
        01  r                   PIC 99.
        PROCEDURE DIVISION.
        BEGIN.
        PERFORM VARYING i FROM 1 BY 1
          UNTIL i GREATER THAN 100
            DIVIDE i BY 15 GIVING q REMAINDER r
            IF r = 0
              DISPLAY "FizzBuzz"
            ELSE
              DIVIDE i BY 3 GIVING q REMAINDER r
              IF r = 0
                DISPLAY "Fizz"
              ELSE
                DIVIDE i BY 5 GIVING q REMAINDER r
                IF r = 0
                  DISPLAY "Buzz"
                ELSE
                  DISPLAY i
                END-IF
              END-IF
            END-IF
        END-PERFORM
        STOP RUN.
