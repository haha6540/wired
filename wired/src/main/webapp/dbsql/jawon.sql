ALTER TABLE REDOURCES RENAME TO RESOURCES;

SELECT * FROM user_sequences;
--�ڿ�sequences;
create sequence res_seq
increment by 1
start with 1
nocache;


select * from restype;

--�ڿ�sequences;
create sequence restype_seq
increment by 1
start with 4
nocache;

--�ڿ�����
insert into restype(type_no, type_name)
values(1,'ȸ�ǽ�');
insert into restype(type_no, type_name)
values(2,'����');
insert into restype(type_no, type_name)
values(3,'����Ʈ');

--�ڿ�����Ʈ VIEW
CREATE OR REPLACE VIEW RESLIST_VIEW
AS
(
    SELECT T.*, R.RES_LOCATION, R.RES_NO, R.RES_NAME
    FROM RESTYPE T JOIN RESOURCES R
    ON T.TYPE_NO=R.TYPE_NO
);


