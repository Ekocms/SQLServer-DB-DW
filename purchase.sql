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
values('210030101','A城','基料1','JL001',4,0.96,'桶','12M','是','化学性腐蚀','210010601','2021/9/17')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030102','A城','基料2','JL002',1,0.68,'桶','12M','否','无','210010601','2020/10/12')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030201','B城','粘接剂1','NJJ01',4,0.85,'罐','30M','是','易燃易爆','210010301','2021/8/16')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030202','B城','粘接剂2','NJJ02',3,0.96,'罐','24M','是','易燃易爆','210010301','2021/6/2')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030301','B城','颜料1','YK001',1,0.68,'罐','12M','是','化学性腐蚀','210010303','2021/1/15')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030302','B城','颜料2','YK002',5,0.88,'罐','30M','否','无','210010303','2021/2/19')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030303','B城','颜料3','YK003',5,0.79,'罐','12M','否','无','210010303','2021/3/14')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030401','C城','填料1','YL001',4,0.67,'升','12M','是','有毒物质','210010501','2021/6/28')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030501','B城','溶剂1','RJ001',3,0.85,'升','30M','是','化学性腐蚀','210010602','2021/8/30')
insert into Material(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others,Eid,Purchasedate)
values('210030601','A城','功能性添加剂1','GNX01',1,0.88,'千克','30M','否','无','210010602','2021/4/30')

select*from Vendor
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020101',0.72,0.77,'能用','无售后保障，不支持退货')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020102',0.94,0.94,'良好','部分售后服务，不支持退货换货')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020103',0.75,0.96,'能用','无售后保障，不支持退货')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020104',0.75,0.9,'能用','无售后保障，不支持退货')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020105',0.95,0.94,'能用','无售后保障，不支持退货')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020106',0.83,0.91,'优秀','无售后保障，不支持退货')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020107',0.8,0.71,'良好','无售后保障，不支持退货')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020108',0.89,0.74,'能用','无售后保障，不支持退货')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020109',0.85,0.76,'良好','部分售后服务，不支持退货换货')
insert into Vendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020110',0.78,0.75,'能用','无售后保障，不支持退货')

select*from Employee
insert into Employee(Eid,Edirect,Egender,Ename)
values('210010601','甘井子区','M','耿建平')
insert into Employee(Eid,Edirect,Egender,Ename)
values('210010301','沙河口区','F','陈富香')
insert into Employee(Eid,Edirect,Egender,Ename)
values('210010303','中山区','M','张健')
insert into Employee(Eid,Edirect,Egender,Ename)
values('210010501','旅顺区','M','刘丝家')
insert into Employee(Eid,Edirect,Egender,Ename)
values('210010602','旅顺区','F','王网')

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
values('210030101','A城','基料1','JL001',4,0.96,'桶','12M','是','化学性腐蚀')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030102','A城','基料2','JL002',1,0.68,'桶','12M','否','无')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030201','B城','粘接剂1','NJJ01',4,0.85,'罐','30M','是','易燃易爆')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030202','B城','粘接剂2','NJJ02',3,0.96,'罐','24M','是','易燃易爆')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030301','B城','颜料1','YK001',1,0.68,'罐','12M','是','化学性腐蚀')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030302','B城','颜料2','YK002',5,0.88,'罐','30M','否','无')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030303','B城','颜料3','YK003',5,0.79,'罐','12M','否','无')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030401','C城','填料1','YL001',4,0.67,'升','12M','是','有毒物质')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030501','B城','溶剂1','RJ001',3,0.85,'升','30M','是','化学性腐蚀')
insert into DimMaterial(Mid,Mdirect,Mname,Type,Batch,Purity,Unit,Mdate,Security,Others)
values('210030601','A城','功能性添加剂1','GNX01',1,0.88,'千克','30M','否','无')

insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020101',0.72,0.77,'能用','无售后保障，不支持退货')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020102',0.94,0.94,'良好','部分售后服务，不支持退货换货')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020103',0.75,0.96,'能用','无售后保障，不支持退货')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020104',0.75,0.9,'能用','无售后保障，不支持退货')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020105',0.95,0.94,'能用','无售后保障，不支持退货')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020106',0.83,0.91,'优秀','无售后保障，不支持退货')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020107',0.8,0.71,'良好','无售后保障，不支持退货')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020108',0.89,0.74,'能用','无售后保障，不支持退货')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020109',0.85,0.76,'良好','部分售后服务，不支持退货换货')
insert into DimVendor(Vendorid,Vendertime,Qualify,Service,Others)
values('210020110',0.78,0.75,'能用','无售后保障，不支持退货')

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
values('210010601','甘井子区','M','耿建平','210030101','210020101','2021/9/17')
insert into FactEmployee(Eid,Edirect,Egender,Ename,Mid,Vendorid,Purchasedate)
values('210010301','沙河口区','F','陈富香','210030201','210020103','2021/8/16')
insert into FactEmployee(Eid,Edirect,Egender,Ename,Mid,Vendorid,Purchasedate)
values('210010303','中山区','M','张健','210030301','210020105','2021/1/15')
insert into FactEmployee(Eid,Edirect,Egender,Ename,Mid,Vendorid,Purchasedate)
values('210010501','旅顺区','M','刘丝家','210030303','210020107','2021/3/14')
insert into FactEmployee(Eid,Edirect,Egender,Ename,Mid,Vendorid,Purchasedate)
values('210010602','旅顺区','F','王网','210030501','210020109','2021/8/30')
