SELECT * FROM BOARD;
SELECT * FROM BOARDLIST;
select * from user_sequences;
select * from member;

UPDATE MEMBER
SET mem_flag='Y'
where mem_name like '�Ǿ���';


--������
select * from ranks;
insert into ranks(ranks_no, ranks_name)
values(1,'�Ϲ�');
insert into ranks(ranks_no, ranks_name)
values(2,'�����̻�');
insert into ranks(ranks_no, ranks_name)
values(3,'������');
select boardlist_seq.nextval from dual;
--insert boardlist
delete from boardlist
where bdlist_no>0;
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

--board������
create sequence board_seq
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

update boardlist 
set bdlist_re='N', bdlist_up='N', bdList_rc='N'
where bdlist_no=1;
commit;
