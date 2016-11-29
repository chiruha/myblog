CREATE TABLE MYUSER (
	MU_NUM NUMBER(10) PRIMARY KEY,						-- 회원번호
	MU_ID VARCHAR2(20),									-- 회원아이디
	MU_PWD VARCHAR2(20),								-- 회원비밀번호
	MU_NAME VARCHAR2(20),								-- 회원이름
	MU_PHONE VARCHAR2(20),								-- 회원전화
	MU_DEL CHAR DEFAULT 'N' CHECK(MU_DEL IN('Y','N'))	-- 삭제여부
);
CREATE SEQUENCE MU_SEQ;

CREATE TABLE REPLY_BOARD (
	RE_NUM NUMBER(10) PRIMARY KEY,						-- 글번호
	RE_WRITER NUMBER(10) REFERENCES MYUSER(MU_NUM),		-- 글쓴이(회원번호)
	RE_TITLE VARCHAR2(100),								-- 글제목
	RE_CONTENT VARCHAR2(2000),							-- 글내용
	RE_DATE DATE, 										-- 작성일
	RE_HIT NUMBER(10),									-- 조회수
	RE_REF NUMBER(10),									-- 그룹번호
	RE_LEV NUMBER(10),									-- 글레벨
	RE_STEP NUMBER(10),									-- 출력순서
	RE_DEL CHAR DEFAULT 'N' CHECK(RE_DEL IN('Y','N'))	-- 삭제여부
);

CREATE SEQUENCE RE_SEQ;

DROP SEQUENCE RE_SEQ;
DROP SEQUENCE MU_SEQ;
DROP TABLE REPLY_BOARD;
DROP TABLE MYUSER;