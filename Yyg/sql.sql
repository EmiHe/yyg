
create database yyg;

create table user
(
   userId               varchar(50) not null,
   username             varchar(50), /* 姓名 */
   password             varchar(50),/* 密码 */
   userPhone            varchar(11),/* 电话号码 */
   address              varchar(100),/* 地址 */
   date                 datetime,/* 时间 */
   primary key (userId)
);

create table activity
(
   aid                  varchar(50) not null,
   goodname             varchar(20) not null,/*手机名 */
   goodtype             varchar(20) not null,/* 型号*/
   goodcolor            varchar(10) not null,/* 颜色*/
   numberCount          int not null,/* 总号数*/
   numberSaled          int not null,/* 已售号数 */
   status               int not null,/* 活动状态 */
   openDate             datetime not null,/* 揭晓时间 */
   currentIndex         int not null,/* 当前期 */
   userId               varchar(50),/* 用户id */
   sourceNumber         varchar(5), /* 当天彩票中奖号码 */
   primary key (aid)
);

alter table activity add constraint FK_Reference_1 foreign key (userId)
      references user (userId) on delete restrict on update restrict;
	  
	  
create table luckNumber
(
   lid                  varchar(50) not null,
   userId               varchar(50) not null,/* 用户id */
   aid                  varchar(50) not null,/* 活动id */
   number               int not null,		/* 购买幸运号码 */	
   date                 datetime not null, /* 时间 */
   primary key (lid)
);

alter table luckNumber add constraint FK_Reference_2 foreign key (aid)
      references activity (aid) on delete restrict on update restrict;

alter table luckNumber add constraint FK_Reference_3 foreign key (userId)
      references user (userId) on delete restrict on update restrict;
