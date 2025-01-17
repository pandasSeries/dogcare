-- 테이블의 제약조건 조회
SELECT 
    uc.table_name,
    uc.constraint_name,
    uc.constraint_type,
    ucc.column_name
FROM 
    all_constraints uc
JOIN 
    all_cons_columns ucc
ON 
    uc.constraint_name = ucc.constraint_name
WHERE 
    
    uc.table_name IN  (
        'BRN', 'FEED', 'DSS_PART', 'DSS', 'SPL', 'MY_SPL', 'BREED', 'MY_FEED', 'MY_DSS', 'FOO', 'SIZ', 'MY_PW', 'ACTI', 'DOG'
        ,'AN_INQ', 'INQ_TY', 'MEM_INFO', 'INQ', 'MEM', 'PROFILE_PIC', 'QUIT', 'QUIT_MEM'
        ,'ZIP', 'PIC'
    )

ORDER BY 
    uc.table_name, 
    uc.constraint_name, 
    ucc.position;

SELECT * FROM DSS_PART;

SELECT * FROM DSS;

commit;

ALTER TABLE QUIT_MEM
ADD CONSTRAINT QUIT_MEM_MEM_CD_FK FOREIGN KEY(MEM_CD) REFERENCES MEM(MEM_CD);

ALTER TABLE QUIT_MEM
ADD CONSTRAINT QUIT_MEM_QUIT_CD_FK FOREIGN KEY(QUIT_CD) REFERENCES QUIT(QUIT_CD);




ALTER TABLE AN_INQ
ADD CONSTRAINT AN_INQ_INQ_CD_FK FOREIGN KEY(INQ_CD) REFERENCES INQ(INQ_CD);

SELECT * FROM AN_INQ;


ALTER TABLE DOG
ADD CONSTRAINT DOG_FOO_CD_FK FOREIGN KEY(FOO_CD) REFERENCES FOO(FOO_CD);

ALTER TABLE DOG
ADD CONSTRAINT DOG_ACTI_CD_FK FOREIGN KEY(ACTI_CD) REFERENCES ACTI(ACTI_CD);

ALTER TABLE DOG
ADD CONSTRAINT DOG_SIZ_CD_FK FOREIGN KEY(SIZ_CD) REFERENCES SIZ(SIZ_CD);


CREATE TABLE MY_PW
(
    MY_PW_CD VARCHAR2(20),
    DOG_CD VARCHAR2(20) CONSTRAINT MY_PW_DOG_CD_NN NOT NULL,
    DOG_PW VARCHAR2(20) CONSTRAINT MY_PW_DOG_PW_NN NOT NULL,
    CONSTRAINT MY_PW_MY_PW_CD_PK PRIMARY KEY(MY_PW_CD)
);
ALTER TABLE MY_PW 
ADD CONSTRAINT MY_PW_DOG_CD_FK FOREIGN KEY(DOG_CD) REFERENCES DOG(DOG_CD);


ALTER TABLE PIC
ADD CONSTRAINT PIC_PIC_CD_PK PRIMARY KEY(PIC_CD);

-- 테이블의 기본키 제약조건 및 컬럼 타입 조회
SELECT 
    uc.table_name,
    uc.constraint_name,
    uc.constraint_type,
    ucc.column_name,
    tc.data_type,
    tc.data_length
    
FROM 
    all_constraints uc
JOIN 
    all_cons_columns ucc
    ON uc.constraint_name = ucc.constraint_name
JOIN 
    all_tab_columns tc
    ON ucc.table_name = tc.table_name
    AND ucc.column_name = tc.column_name
WHERE 
    uc.constraint_type = 'P' -- 'P' indicates Primary Key
    AND uc.table_name IN (
        'FEED', 'DSS', 'MY_FEED', 'DOG', 'MY_DSS', 'SPL', 'MY_SPL', 
        'MEM_INFO', 'WD', 'INQ', 'ACTI', 'PIC', 
        'BRN', 'INQ_TY', 'DSS_PART', 'SPL_TY', 'FOO', 'QUIT', 'BREED', 'SIZ', 'MEM', 'ZIP', 'PIC', 'MEMDOG'
    )
ORDER BY 
    uc.table_name, 
    uc.constraint_name, 
    ucc.position;

desc BRN;
desc FEED;
desc MY_FEED;

desc DSS_PART;
desc DSS;
desc MY_DSS;

desc SPL_TY;
desc SPL;
desc MY_SPL;

desc BREED;

desc MY_PW;

desc ACTI;


desc DOG;

ALTER TABLE DOG
ADD (DOG_PASS VARCHAR2(20) CONSTRAINT DOG_DOG_PASS_NN NOT NULL);

ALTER TABLE DOG
ADD (DOG_WEIGHT NUMBER CONSTRAINT DOG_DOG_WEIGHT_NN NOT NULL);

ALTER TABLE DOG
ADD (FOO_CD VARCHAR2(20) CONSTRAINT DOG_FOO_CD_NN NOT NULL);


ALTER TABLE DOG
ADD (ACTI_CD VARCHAR2(20) CONSTRAINT DOG_ACTI_CD_NN NOT NULL);

ALTER TABLE DOG
ADD (SIZ_CD VARCHAR2(20) CONSTRAINT DOG_SIZ_CD_NN NOT NULL);

ALTER TABLE QUIT
MODIFY QUIT VARCHAR2(200);

desc QUIT_MEM;
desc QUIT;

ALTER TABLE QUIT_MEM
MODIFY QUIT_MEM_EMAIL VARCHAR2(200);

ALTER TABLE PIC
MODIFY PIC_PATH VARCHAR2(300);

ALTER TABLE ACTI
MODIFY ACTI_DETAIL VARCHAR2(200);

ALTER TABLE SPL_TY
MODIFY SPL_TY_NAME VARCHAR2(100);

ALTER TABLE SPL
MODIFY SPL_NAME VARCHAR2(100);


desc MEM_INFO;

desc DSS;

INSERT INTO DSS
VALUES(('DSS'||DSS_SEQ.NEXTVAL),'','','');
--                      질병코드,부위코드, 병명, 증상
--INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'','','');

INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART3','구토','구토');
INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART3','설사','설사');
INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART3','혈변','혈변');
INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART1','위염','섭식장애와 구토 그로인한 식욕저하,체중감소 등');
INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART3','장염','구토와 설사');
INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART10','피부염','붉은 반점, 홍반, 뾰루지,털 빠짐, 피부 벗겨짐, 피부 악취, 가려움, 긁음, 핥거나 비비는 행동');
INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART10','외이도염','귀를 자주 긁고 귀에서 불쾌한 냄새가 난다. 머리를 흔들거나 비비고 머리를 한쪽으로 기울이는 행동을 자주 보인다.');
INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART10','내이도염','귀를 자주 긁고 귀에서 불쾌한 냄새가 난다. 머리를 흔들거나 비비고 머리를 한쪽으로 기울이는 행동을 자주 보인다.');
INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART3','이물섭식','호흡곤란이나 청색증이 동반될 수도 있습니다. 또한 작고 날카로운 이물을 섭취했을 때 당장은 아무런 증상이 없을 수 있지만, 위나 장의 천공을 일으킬 경우 쇼크나 복막염을 일으킬 수도 있습니다');
INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART6','슬개골 탈구','탈구 증상이 있는 다리에 힘이 안들어가게끔 걷는다. 절뚝 거린다. 앉은 자세가 비정상적이다. ( 무릎이 바깥쪽으로 향하여 있음)');
INSERT INTO DSS VALUES(('DSS'||DSS_SEQ.NEXTVAL),'DPART4','백내장','벽이나 가구에 자주 부딪히며 외출을 꺼리게 된다. 계단을 내려가지 못하거나 불안해 행동이 공격적으로 변할 수도 있다. 무엇보다 수정체가 혼탁해져 눈동자가 뿌옇게 변하는 것이 큰 특징이다.');

SELECT * FROM DSS;




ALTER TABLE MEM_INFO
MODIFY ADDR VARCHAR2(200);

desc DSS;

desc AN_INQ;
desc INQ_TY;
desc INQ;

desc MEM_INFO;

ALTER TABLE MEM_INFO
ADD CLASS1 VARCHAR2(100) CONSTRAINT MEM_INFO_CLASS1_NN NOT NULL;

ALTER TABLE MEM_INFO
ADD CLASS2 VARCHAR2(100) CONSTRAINT MEM_INFO_CLASS2_NN NOT NULL;

ALTER TABLE MEM_INFO
ADD CLASS3 VARCHAR2(100) CONSTRAINT MEM_INFO_CLASS3_NN NOT NULL;


desc ZIP;
DROP TABLE ZIP CASCADE CONSTRAINTS;


desc MEM;


desc PIC;
desc PROFILE_PIC;

desc QUIT;
desc QUIT_MEM;

desc FOO;
desc SIZ;

desc ZIP;





ALTER TABLE FEED
ADD CONSTRAINT FEED_FD_BRN_FK
FOREIGN KEY (FD_BRN_CD) REFERENCES BRN (FD_BRN_CD);


ALTER TABLE DSS
ADD CONSTRAINT DSS_PART_CD_FK
FOREIGN KEY (PART_CD) REFERENCES DSS_PART (PART_CD);

ALTER TABLE SPL
ADD CONSTRAINT SPL_SPL_TY_CD_FK
FOREIGN KEY (SPL_TY_CD) REFERENCES SPL_TY (SPL_TY_CD);

----------------------------
ALTER TABLE MY_FOO
ADD CONSTRAINT MY_FOO_DOG_CD_FK
FOREIGN KEY (DOG_CD) REFERENCES DOG (DOG_CD);

ALTER TABLE MY_FOO
ADD CONSTRAINT MY_FOO_FOO_CD_FK
FOREIGN KEY (FOO_CD) REFERENCES FOO(FOO_CD);
---------------------------------

ALTER TABLE MY_WT
ADD CONSTRAINT MY_WT_DOG_CD_FK
FOREIGN KEY (DOG_CD) REFERENCES DOG(DOG_CD);

-----------------------------------------

ALTER TABLE MY_PW
ADD CONSTRAINT MY_PW_DOG_CD_FK
FOREIGN KEY(DOG_CD) REFERENCES DOG(DOG_CD);

----------------------------------------
ALTER TABLE MY_SIZ
ADD CONSTRAINT MY_SIZ_DOG_CD_FK
FOREIGN KEY(DOG_CD) REFERENCES DOG(DOG_CD);


ALTER TABLE MY_SIZ
ADD CONSTRAINT MY_SIZ_SIZ_CD_FK
FOREIGN KEY(SIZ_CD) REFERENCES SIZ(SIZ_CD);
------------------------------
ALTER TABLE MY_DSS
ADD CONSTRAINT MY_DSS_DOG_CD_FK
FOREIGN KEY(DOG_CD) REFERENCES DOG(DOG_CD);

ALTER TABLE MY_DSS
ADD CONSTRAINT MY_DSS_DSS_CD_FK
FOREIGN KEY(DSS_CD) REFERENCES DSS(DSS_CD);

--------------------------

ALTER TABLE WD
ADD CONSTRAINT WD_MEM_CD_FK
FOREIGN KEY(MEM_CD) REFERENCES MEM(MEM_CD);


ALTER TABLE WD
ADD CONSTRAINT WD_QUIT_CD_FK
FOREIGN KEY(QUIT_CD) REFERENCES QUIT(QUIT_CD);

--------------------------------
ALTER TABLE DOG
ADD CONSTRAINT DOG_MEM_CD_FK
FOREIGN KEY(MEM_CD) REFERENCES MEM(MEM_CD);


ALTER TABLE DOG
ADD CONSTRAINT DOG_BREED_CD_FK
FOREIGN KEY(BREED_CD) REFERENCES BREED(BREED_CD);
------------------------
ALTER TABLE MY_ACTI
ADD CONSTRAINT MY_ACTI_DOG_CD_FK
FOREIGN KEY(DOG_CD) REFERENCES DOG(DOG_CD);


ALTER TABLE MY_ACTI
ADD CONSTRAINT MY_ACTI_ACTI_CD_FK
FOREIGN KEY(ACTI_CD) REFERENCES ACTI(ACTI_CD);

---------------------

ALTER TABLE MEM_INFO
ADD CONSTRAINT MEM_INFO_MEM_CD_FK
FOREIGN KEY(MEM_CD) REFERENCES MEM(MEM_CD);

ALTER TABLE MEM_INFO
ADD CONSTRAINT MEM_INFO_ZIP_CD_FK
FOREIGN KEY(ZIP_CD) REFERENCES ZIP(ZIP_CD);
-----------------------------------------
ALTER TABLE PIC
ADD CONSTRAINT PIC_MEM_CD_FK
FOREIGN KEY(MEM_CD) REFERENCES MEM(MEM_CD);
------------------------------
ALTER TABLE MY_SPL
ADD CONSTRAINT MY_SPL_SPL_CD_FK
FOREIGN KEY(SPL_CD) REFERENCES SPL(SPL_CD);

desc MY_SPL;

ALTER TABLE MY_SPL
ADD CONSTRAINT MY_SPL_SPL_CD2_FK
FOREIGN KEY(SPL_CD2) REFERENCES SPL(SPL_CD);

ALTER TABLE MY_SPL
ADD CONSTRAINT MY_SPL_SPL_CD3_FK
FOREIGN KEY(SPL_CD3) REFERENCES SPL(SPL_CD);

ALTER TABLE MY_SPL
ADD CONSTRAINT MY_SPL_DOG_CD_FK
FOREIGN KEY(DOG_CD) REFERENCES DOG(DOG_CD);
------------------------------

ALTER TABLE MY_FEED
ADD CONSTRAINT MY_FEED_FEED_CD_FK
FOREIGN KEY(FEED_CD) REFERENCES FEED(FEED_CD);


ALTER TABLE MY_FEED
ADD CONSTRAINT MY_FEED_FEED_CD2_FK
FOREIGN KEY(FEED_CD2) REFERENCES FEED(FEED_CD);

ALTER TABLE MY_FEED
ADD CONSTRAINT MY_FEED_FEED_CD3_FK
FOREIGN KEY(FEED_CD3) REFERENCES FEED(FEED_CD);

ALTER TABLE MY_FEED
ADD CONSTRAINT MY_FEED_DOG_CD_FK
FOREIGN KEY(DOG_CD) REFERENCES DOG(DOG_CD);
------------------------------------------


ALTER TABLE PROFILE_PIC
ADD CONSTRAINT PROFILE_PIC_PIC_CD_FK
FOREIGN KEY(PIC_CD) REFERENCES PIC(PIC_CD);

ALTER TABLE PROFILE_PIC
ADD CONSTRAINT PROFILE_PIC_SIZ_CD_FK
FOREIGN KEY(SIZ_CD) REFERENCES SIZ(SIZ_CD);

ALTER TABLE PROFILE_PIC
ADD CONSTRAINT PROFILE_PIC_MEMDOG_CD_FK
FOREIGN KEY(MEMDOG_CD) REFERENCES MEMDOG(MEMDOG_CD);

---------------------------------------------------------
ALTER TABLE INQ
ADD CONSTRAINT INQ_MEM_CD_FK
FOREIGN KEY(MEM_CD) REFERENCES MEM(MEM_CD);

ALTER TABLE INQ
ADD CONSTRAINT INQ_INQ_TY_CD_FK
FOREIGN KEY(INQ_TY_CD) REFERENCES INQ_TY(INQ_TY_CD);

-----------------------------------------------
desc MY_FEED;
CREATE TABLE PROFILE_PIC
(
    PROFILE_CD VARCHAR2(20) CONSTRAINT PROFILE_PIC_PROFILE_CD_NN NOT NULL
    ,PIC_CD VARCHAR2(20) CONSTRAINT PROFILE_PIC_PIC_CD_NN NOT NULL
    ,SIZ_CD VARCHAR2(20) CONSTRAINT PROFILE_PIC_SIZ_CD_NN NOT NULL
    ,MEMDOG_CD VARCHAR2(20) CONSTRAINT PROFILE_PIC_MEMDOG_CD_NN NOT NULL
    ,PROFILE_WR_DATE DATE CONSTRAINT PROFILE_PIC_PROFILE_WR_DATE_NN NOT NULL
    ,CONSTRAINT PROFILE_PIC_PROFILE_CD_PK PRIMARY KEY(PROFILE_CD)
);

ALTER TABLE MEM_INFO
ADD CONSTRAINT MEM_INFO_EMAIL_U UNIQUE(EMAIL);

CREATE TABLE MY_ACTI
(
    MY_ACTI_CD VARCHAR2(20) CONSTRAINT MY_ACTI_MY_ACTI_CD_NN NOT NULL
    ,DOG_CD VARCHAR2(20) CONSTRAINT MY_ACTI_DOG_CD_NN NOT NULL
    ,ACTI_CD VARCHAR2(20) CONSTRAINT MY_ACTI_ACTI_CD_NN NOT NULL
    ,REG_DATE DATE CONSTRAINT MY_ACTI_REG_DATE_NN NOT NULL
    ,CONSTRAINT MY_ACTI_MY_ACTI_CD_PK PRIMARY KEY(MY_ACTI_CD)

);

DROP TABLE DOG;

CREATE TABLE DOG
(
    DOG_CD  VARCHAR2(20) CONSTRAINT DOG_DOG_CD_NN NOT NULL
    ,MEM_CD VARCHAR2(20) CONSTRAINT DOG_MEM_CD_NN NOT NULL
    ,BREED_CD VARCHAR2(20) CONSTRAINT DOG_BREED_CD_NN NOT NULL
    ,DOG_NAME VARCHAR2(20) CONSTRAINT DOG_DOG_NAME_NN NOT NULL
    ,DOG_BIRTH DATE CONSTRAINT DOG_DOG_BIRTH_NN NOT NULL
    ,DOG_REG DATE CONSTRAINT DOG_DOG_REG_NN NOT NULL
    ,CONSTRAINT DOG_DOG_CD_PK PRIMARY KEY(DOG_CD)
);

ALTER TABLE DOG
MODIFY MEM_CD VARCHAR2(20);

ALTER TABLE BREED
MODIFY BREED VARCHAR2(20);


CREATE TABLE MY_FOO
(
    MY_FOO_CD VARCHAR2(20) CONSTRAINT MY_FOO_MY_FOO_CD_NN NOT NULL
    ,DOG_CD VARCHAR2(20) CONSTRAINT MY_FOO_DOG_CD_NN NOT NULL
    ,FOO_CD VARCHAR2(20) CONSTRAINT MY_FOO_FOO_CD_NN NOT NULL
    ,REG_DATE DATE CONSTRAINT MY_FOO_REG_DATE_NN NOT NULL
    
    ,CONSTRAINT MY_FOO_MY_FOO_CD_PK PRIMARY KEY(MY_FOO_CD)
);

CREATE TABLE MY_WT
(
    MY_WT_CD VARCHAR2(20) CONSTRAINT MY_WT_MY_WT_CD_NN NOT NULL
    ,DOG_CD VARCHAR2(20) CONSTRAINT MY_WT_DOG_CD_NN NOT NULL
    ,MY_WT_WT VARCHAR2(20) CONSTRAINT MY_WT_MY_WT_WT_NN NOT NULL
    ,REG_DATE DATE CONSTRAINT MY_WT_REG_DATE_NN NOT NULL
    
    ,CONSTRAINT MY_WT_MY_WT_CD_PK PRIMARY KEY(MY_WT_CD)
);

CREATE TABLE MY_SIZ
(
    MY_SIZ_CD VARCHAR2(20) CONSTRAINT MY_SIZ_MY_SIZ_CD_NN NOT NULL
    ,DOG_CD VARCHAR2(20) CONSTRAINT MY_SIZ_DOG_CD_NN NOT NULL
    ,SIZ_CD VARCHAR2(20) CONSTRAINT MY_SIZ_SIZ_CD_NN NOT NULL
    ,REG_DATE DATE CONSTRAINT MY_SIZ_REG_DATE_NN NOT NULL
    
    ,CONSTRAINT MY_SIZ_MY_SIZ_CD_PK PRIMARY KEY(MY_SIZ_CD)
);

CREATE TABLE MY_PW
(
    MY_PW_CD VARCHAR2(20) CONSTRAINT MY_PW_MY_PW_CD_NN NOT NULL
    ,DOG_CD VARCHAR2(20) CONSTRAINT MY_PW_DOG_CD_NN NOT NULL
    ,DOG_PW VARCHAR2(20) CONSTRAINT MY_PW_DOG_PW_NN NOT NULL
    
    ,CONSTRAINT MY_PW_MY_PW_CD_PK PRIMARY KEY(MY_PW_CD)
);


ALTER TABLE MY_SPL
MODIFY SPL_CD VARCHAR2(20);

ALTER TABLE MY_SPL
ADD SPL_CD2 VARCHAR2(20) CONSTRAINT MY_SPL_SPL_CD2_NN NOT NULL;

ALTER TABLE MY_SPL
ADD SPL_CD3 VARCHAR2(20) CONSTRAINT MY_SPL_SPL_CD3_NN NOT NULL;

ALTER TABLE MY_SPL
ADD LS_SPL_DATE DATE CONSTRAINT MY_SPL_LS_SPL_DATE_NN NOT NULL;

ALTER TABLE MY_SPL
MODIFY DOG_CD VARCHAR2(20);



ALTER TABLE MY_FEED
MODIFY FEED_CD VARCHAR2(20);



ALTER TABLE MY_FEED
MODIFY FEED_CD2 VARCHAR2(20) CONSTRAINT MY_FEED_FEED_CD2_NN NOT NULL;

ALTER TABLE MY_FEED
ADD FEED_CD3 VARCHAR2(20) CONSTRAINT MY_FEED_FEED_CD3_NN NOT NULL;

ALTER TABLE MY_FEED
MODIFY DOG_CD VARCHAR2(20);

ALTER TABLE MY_FEED
ADD FEED_REG_DATE DATE CONSTRAINT MY_FEED_FEED_REG_DATE_NN NOT NULL;
