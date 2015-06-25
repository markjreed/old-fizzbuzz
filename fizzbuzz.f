      DO 10 I=1,100
        IF (MOD(I,15) .EQ. 0) THEN
          PRINT *, 'FizzBuzz'
        ELSE IF (MOD(I,3) .EQ. 0) THEN
          PRINT *, 'Fizz'
        ELSE IF (MOD(I,5) .EQ. 0) THEN
          PRINT *, 'Buzz'
        ELSE
          PRINT *, I
        END IF
   10 CONTINUE
      END
