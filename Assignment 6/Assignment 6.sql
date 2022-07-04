SELECT CURRENT_TIMESTAMP FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'HH24')
FROM DUAL;


CREATE OR REPLACE PACKAGE XXCTS_RAJDEEP_TIMESTAMP_PACK
IS
    PROCEDURE CHECK_TIME (ITEMTYPE IN VARCHAR2, 
                          itemkey in varchar2,
                          actid in number,
                          FUNCMODE IN VARCHAR2,
                          RESULT IN OUT VARCHAR2);
END XXCTS_RAJDEEP_TIMESTAMP_PACK;      

------------------------------------------------------------------------------

CREATE OR REPLACE PACKAGE BODY XXCTS_RAJDEEP_TIMESTAMP_PACK
IS
    PROCEDURE CHECK_TIME (ITEMTYPE IN VARCHAR2, 
                          ITEMKEY in varchar2,
                          ACTID in number,
                          FUNCMODE IN VARCHAR2,
                          RESULT IN OUT VARCHAR2)
    IS
          V_TIME VARCHAR2(3);
          V_TIME2 VARCHAR2(3);
    BEGIN
          SELECT TO_CHAR(SYSDATE, 'HH24')
          INTO V_TIME
          FROM DUAL;

          WF_ENGINE.SETITEMATTRTEXT(ITEMTYPE=>ITEMTYPE, ITEMKEY =>ITEMKEY, ANAME=>'TIME_OF_THE_DAY',AVALUE=>V_TIME );
          V_TIME2 := WF_ENGINE.GETITEMATTRTEXT ( ITEMTYPE => ITEMTYPE, ITEMKEY => ITEMKEY,ANAME => 'TIME_OF_THE_DAY');
          IF V_TIME2 BETWEEN 9 AND 18 THEN
            RESULT := 'COMPLETE:Y';
          ELSE
            RESULT := 'COMPLETE:N';
          END IF;                   

    END CHECK_TIME;
END XXCTS_RAJDEEP_TIMESTAMP_PACK;     