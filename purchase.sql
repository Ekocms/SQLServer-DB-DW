create database purchase
create table Material(
Mid char(9) PRIMARY KEY,
Mdirect text not null, 
Mname text not null,
Type char(5) not null,
Batch char(1) not null,
Purity float check(Purity>0),
Unit varchar(4),
Mdate char(3) not null,
Security char(2),
Others text,
Eid char(9),
Purchasedate date not null,
foreign key(Eid) references Employee(Eid));
select*from vendor

create table Vendor(
Vendorid char(9) PRIMARY KEY,
Vendertime float not null,
Qualify float not null,
Service char(4),
Others text);

create table Employee(
Eid char(9) PRIMARY KEY,
Edirect char(8) not null,
Egender char(1) not null,
Ename text not null);

create table Contact(
Eid char(9) ,
Vendorid char(9) ,
Evaluate text not null,
primary key(eid,vendorid),
foreign key(Eid) references Employee(Eid),
foreign key(Vendorid) references Vendor(Vendorid));

create table Supply(
Mid char(9) ,
Vendorid char(9) ,
primary key(Mid,Vendorid),
foreign key(Mid) references Material(Mid),
foreign key(Vendorid) references Vendor(Vendorid));

select*from Material
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030101','A��','����1','JL001',4,0.96,'Ͱ','12M','��','��ѧ�Ը�ʴ','210010601','2021/9/17')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030102','A��','����2','JL002',1,0.68,'Ͱ','12M','��','��','210010601','2020/10/12')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030201','B��','ճ�Ӽ�1','NJJ01',4,0.85,'��','30M','��','��ȼ�ױ�','210010301','2021/8/16')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030202','B��','ճ�Ӽ�2','NJJ02',3,0.96,'��','24M','��','��ȼ�ױ�','210010301','2021/6/2')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030301','B��','����1','YK001',1,0.68,'��','12M','��','��ѧ�Ը�ʴ','210010303','2021/1/15')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030302','B��','����2','YK002',5,0.88,'��','30M','��','��','210010303','2021/2/19')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030303','B��','����3','YK003',5,0.79,'��','12M','��','��','210010303','2021/3/14')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030401','C��','����1','YL001',4,0.67,'��','12M','��','�ж�����','210010501','2021/6/28')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030501','B��','�ܼ�1','RJ001',3,0.85,'��','30M','��','��ѧ�Ը�ʴ','210010602','2021/8/30')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030601','A��','��������Ӽ�1','GNX01',1,0.88,'ǧ��','30M','��','��','210010602','2021/4/30')

select*from Vendor
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020101',0.72,0.77,'����','���ۺ��ϣ���֧���˻�')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020102',0.94,0.94,'����','�����ۺ���񣬲�֧���˻�����')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020103',0.75,0.96,'����','���ۺ��ϣ���֧���˻�')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020104',0.75,0.9,'����','���ۺ��ϣ���֧���˻�')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020105',0.95,0.94,'����','���ۺ��ϣ���֧���˻�')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020106',0.83,0.91,'����','���ۺ��ϣ���֧���˻�')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020107',0.8,0.71,'����','���ۺ��ϣ���֧���˻�')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020108',0.89,0.74,'����','���ۺ��ϣ���֧���˻�')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020109',0.85,0.76,'����','�����ۺ���񣬲�֧���˻�����')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020110',0.78,0.75,'����','���ۺ��ϣ���֧���˻�')

select*from Employee
insert into Employee(Eid,Edirect,Egender,Ename)
values('210010601','�ʾ�����','M','����ƽ')
insert into Employee(Eid,Edirect,Egender,Ename)
values('210010301','ɳ�ӿ���','F','�¸���')
insert into Employee(Eid,Edirect,Egender,Ename)
values('210010303','��ɽ��','M','�Ž�')
insert into Employee(Eid,Edirect,Egender,Ename)
values('210010501','��˳��','M','��˿��')
insert into Employee(Eid,Edirect,Egender,Ename)
values('210010602','��˳��','F','����')

insert into Contact(Eid,Vendorid,Evaluate)
values('210010601','210020110','A')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010601','210020109','C')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010301','210020108','B')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010301','210020107','A')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010303','210020106','C')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010303','210020110','D')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010501','210020109','B')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010501','210020108','C')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010602','210020107','C')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010602','210020106','D')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010601','210020105','B')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010601','210020104','A')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010301','210020103','B')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010301','210020102','D')
insert into Contact(Eid,Vendorid,Evaluate)
values('210010303','210020101','A')
drop table Contact
select*from Contact

insert into Supply(Mid, Vendorid) 
values ('210030101','210020101')
insert into Supply(Mid, Vendorid) 
values ('210030102','210020102')
insert into Supply(Mid, Vendorid) 
values ('210030201','210020103')
insert into Supply(Mid, Vendorid) 
values ('210030202','210020104')
insert into Supply(Mid, Vendorid) 
values ('210030301','210020105')
insert into Supply(Mid, Vendorid) 
values ('210030302','210020106')
insert into Supply(Mid, Vendorid) 
values ('210030303','210020107')
insert into Supply(Mid, Vendorid) 
values ('210030401','210020108')
insert into Supply(Mid, Vendorid) 
values ('210030501','210020109')
insert into Supply(Mid, Vendorid) 
values ('210030601','210020110')
insert into Supply(Mid, Vendorid) 
values ('210030101','210020110')
insert into Supply(Mid, Vendorid) 
values ('210030102','210020109')
insert into Supply(Mid, Vendorid) 
values ('210030201','210020108')
insert into Supply(Mid, Vendorid) 
values ('210030202','210020107')
insert into Supply(Mid, Vendorid) 
values ('210030301','210020106')
insert into Supply(Mid, Vendorid) 
values ('210030302','210020105')
insert into Supply(Mid, Vendorid) 
values ('210030303','210020104')
insert into Supply(Mid, Vendorid) 
values ('210030401','210020103')
insert into Supply(Mid, Vendorid) 
values ('210030501','210020102')
insert into Supply(Mid, Vendorid) 
values ('210030601','210020101')

create table DimMaterial(
Mid char(9) PRIMARY KEY,
Mdirect text not null, 
Mname text not null,
Type char(5) not null,
Batch char(1) not null,
Purity float check(Purity>0),
Unit varchar(4),
Mdate char(3) not null,
Security char(2),
Others text);

create table DimDate(
Purchasedate date not null primary key,
Evaluate text not null);

create table DimVendor(
Vendorid char(9) PRIMARY KEY,
Vendertime float not null,
Qualify float not null,
Service char(4),
Others text);

create table FactEmployee(
Eid char(9) PRIMARY KEY,
Edirect char(8) not null,
Egender char(1) not null,
Ename text not null,
Mid char(9),
Purchasedate date not null,
Vendorid char(9),
foreign key(Mid)references DimMaterial(Mid),
foreign key(Vendorid)references DimVendor(Vendorid),
foreign key(Purchasedate)references DimDate(Purchasedate));



insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030101','A��','����1','JL001',4,0.96,'Ͱ','12M','��','��ѧ�Ը�ʴ')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030102','A��','����2','JL002',1,0.68,'Ͱ','12M','��','��')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030201','B��','ճ�Ӽ�1','NJJ01',4,0.85,'��','30M','��','��ȼ�ױ�')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030202','B��','ճ�Ӽ�2','NJJ02',3,0.96,'��','24M','��','��ȼ�ױ�')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030301','B��','����1','YK001',1,0.68,'��','12M','��','��ѧ�Ը�ʴ')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030302','B��','����2','YK002',5,0.88,'��','30M','��','��')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030303','B��','����3','YK003',5,0.79,'��','12M','��','��')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030401','C��','����1','YL001',4,0.67,'��','12M','��','�ж�����')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030501','B��','�ܼ�1','RJ001',3,0.85,'��','30M','��','��ѧ�Ը�ʴ')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030601','A��','��������Ӽ�1','GNX01',1,0.88,'ǧ��','30M','��','��')

insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020101',0.72,0.77,'����','���ۺ��ϣ���֧���˻�')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020102',0.94,0.94,'����','�����ۺ���񣬲�֧���˻�����')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020103',0.75,0.96,'����','���ۺ��ϣ���֧���˻�')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020104',0.75,0.9,'����','���ۺ��ϣ���֧���˻�')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020105',0.95,0.94,'����','���ۺ��ϣ���֧���˻�')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020106',0.83,0.91,'����','���ۺ��ϣ���֧���˻�')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020107',0.8,0.71,'����','���ۺ��ϣ���֧���˻�')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020108',0.89,0.74,'����','���ۺ��ϣ���֧���˻�')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020109',0.85,0.76,'����','�����ۺ���񣬲�֧���˻�����')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020110',0.78,0.75,'����','���ۺ��ϣ���֧���˻�')

insert into DimDate(Purchasedate, Evaluate) 
values ('2021/9/17','A')
insert into DimDate(Purchasedate, Evaluate) 
values ('2020/10/12','C')
insert into DimDate(Purchasedate, Evaluate) 
values ('2021/8/16','B')
insert into DimDate(Purchasedate, Evaluate) 
values ('2021/6/2','A')
insert into DimDate(Purchasedate, Evaluate) 
values ('2021/1/15','C')
insert into DimDate(Purchasedate, Evaluate) 
values ('2021/2/19','D')
insert into DimDate(Purchasedate, Evaluate) 
values ('2021/3/14','B')
insert into DimDate(Purchasedate, Evaluate) 
values ('2021/6/28','C')
insert into DimDate(Purchasedate, Evaluate) 
values ('2021/8/30','C')
insert into DimDate(Purchasedate, Evaluate) 
values ('2021/4/30','D')

insert into FactEmployee(Eid,Edirect,Egender,Ename,Mid,Vendorid,Purchasedate)
values('210010601','�ʾ�����','M','����ƽ','210030101','210020101','2021/9/17')
insert into FactEmployee(Eid,Edirect,Egender,Ename,Mid,Vendorid,Purchasedate)
values('210010301','ɳ�ӿ���','F','�¸���','210030201','210020103','2021/8/16')
insert into FactEmployee(Eid,Edirect,Egender,Ename,Mid,Vendorid,Purchasedate)
values('210010303','��ɽ��','M','�Ž�','210030301','210020105','2021/1/15')
insert into FactEmployee(Eid,Edirect,Egender,Ename,Mid,Vendorid,Purchasedate)
values('210010501','��˳��','M','��˿��','210030303','210020107','2021/3/14')
insert into FactEmployee(Eid,Edirect,Egender,Ename,Mid,Vendorid,Purchasedate)
values('210010602','��˳��','F','����','210030501','210020109','2021/8/30')
