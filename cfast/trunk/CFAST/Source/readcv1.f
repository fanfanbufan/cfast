      SUBROUTINE READCV1 (IN,COUNT,START,IX,XI,TYPE,VALID)
C
C   DO THE ACTUAL STRING CONVERSION
C
      INTEGER START,FIRST,LAST,COUNT,TYPE
      LOGICAL VALID
      CHARACTER*128 IN
      REAL XI

      CALL SSTRNGP (IN,COUNT,START,FIRST,LAST,VALID)
      IF (.NOT.VALID) THEN
        GO TO 5
      END IF
      CALL CONVRT (IN,FIRST,LAST,TYPE,IX,XI)
      COUNT = COUNT - (LAST-START+1)
      START = LAST + 1
5     RETURN
      END
