SELECT * FROM BOARD;
SELECT * FROM BOARDLIST;


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
values(boardlist_seq.nextval, '����1��', 'Y', 'Y', 'Y',1);

--board������
create sequence board2_seq
start with 1
increment by 1;
--boardlist������
create sequence boardlist_seq
start with 1
increment by 1;

commit;