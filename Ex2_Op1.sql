use[ex2_OP1]

create table STUDENT(
	SSN# int,
	Name nvarchar(15),
	Major nvarchar(15),
	Bdate date,
	PRIMARY KEY(SSN#)
)
go
create table COURSE(
	Course# int,
	Cname nvarchar(15),
	Dept nvarchar(15),
	PRIMARY KEY(Course#)
)
go

create table TEXT(
	Book_ISBN# nvarchar(15),
	Book_Title nvarchar(15),
	Publisher nvarchar(15),
	Author nvarchar(15),
	PRIMARY KEY(Book_ISBN#)
)
go

create table BOOK_ADOPTION(
	Course# int,
	Quarter nvarchar(15),
	Book_ISBN# nvarchar(15),
	PRIMARY KEY(Quarter),
	foreign key (Course#) references COURSE,
	foreign key (Book_ISBN#) references TEXT
)
go
create table ENROLL(
	SSN# int,
	Course# int,
	Quarter nvarchar(15),
	Grade nvarchar(15),
	PRIMARY KEY(SSN#),
	foreign key (SSN#) references STUDENT,
	foreign key (Course#) references COURSE,
	foreign key (Quarter) references BOOK_ADOPTION
)
go

