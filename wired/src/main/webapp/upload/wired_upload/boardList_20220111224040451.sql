SELECT * FROM BOARD;
SELECT * FROM BOARDLIST;

select bdlist_no, bdlist_name from boardlist;

ALTER TABLE board
ADD FOREIGN KEY (bdlist_no)
REFERENCES boardlist
ON DELETE CASCADE;

ALTER TABLE BOARD DROP FOREIGN KEY;


��ó: https://all-record.tistory.com/151 [������ ��� ���]

SELECT * FROM    ALL_CONSTRAINTS
WHERE    TABLE_NAME = 'board';

delete from boardlist
where bdlist_no>10;

delete from boardlist
where bdlist_no=221;
select * from board where bdlist_no=221;

commit;
select * from user_sequences;

--������
select * from ranks;
insert into ranks(ranks_no, ranks_name)
values(1,'�Ϲ�');
insert into ranks(ranks_no, ranks_name)
values(2,'�����̻�');
insert into ranks(ranks_no, ranks_name)
values(3,'������');


--insert boardlist
insert into boardlist(bdlist_no,bdlist_name, bdlist_re, bdlist_up, bdlist_rc, ranks_no)
values(boardlist_seq.nextval, '��������', 'N', 'N', 'N',1);
insert into boardlist(bdlist_no,bdlist_name, bdlist_re, bdlist_up, bdlist_rc, ranks_no)
values(boardlist_seq.nextval, '����1��', 'Y', 'Y', 'Y',1);
insert into boardlist(bdlist_no,bdlist_name, bdlist_re, bdlist_up, bdlist_rc, ranks_no)
values(boardlist_seq.nextval, '����2��', 'Y', 'Y', 'Y',1);
insert into boardlist(bdlist_no,bdlist_name, bdlist_re, bdlist_up, bdlist_rc, ranks_no)
values(boardlist_seq.nextval, '����3��', 'Y', 'Y', 'Y',1);
insert into boardlist(bdlist_no,bdlist_name, bdlist_re, bdlist_up, bdlist_rc, ranks_no)
values(boardlist_seq.nextval, '�1��', 'Y', 'Y', 'Y',1);
insert into boardlist(bdlist_no,bdlist_name, bdlist_re, bdlist_up, bdlist_rc, ranks_no)
values(boardlist_seq.nextval, '�2��', 'Y', 'Y', 'Y',1);
insert into boardlist(bdlist_no,bdlist_name, bdlist_re, bdlist_up, bdlist_rc, ranks_no)
values(boardlist_seq.nextval, '�3��', 'Y', 'Y', 'Y',1);
insert into boardlist(bdlist_no,bdlist_name, bdlist_re, bdlist_up, bdlist_rc, ranks_no)
values(boardlist_seq.nextval, '��ص���', 'Y', 'Y', 'Y',1);
--�Խ��Ǹ���Ʈ ����
delete from boardList
where bdlist_no<100;

update boardlist
set bdlist_no=1
where bdlist_name='��������';

--board������
create sequence board2_seq
start with 1
increment by 1;

create sequence reply_seq
start with 1
increment by 1;

--boardlist������
drop sequence boardlist_seq;
create sequence boardlist_seq
start with 1
increment by 1;

--�Խ��� ���� ���

select bdlist_no, bdlist_name, ranks_no, 
    (select ranks_name from ranks r where b.ranks_no=r.ranks_no) ranks_name  
from boardlist b
ORDER BY bdlist_no;

--����¡ ������ 2PAGE
SELECT *
from
(
select rownum AS RNUM, A.*
from
(
select bdlist_no, bdlist_name, ranks_no, 
    (select ranks_name from ranks r where b.ranks_no=r.ranks_no) ranks_name  
from boardlist b
ORDER BY bdlist_no
)A
)
WHERE RNUM>5 AND RNUM<=5+5;



commit;