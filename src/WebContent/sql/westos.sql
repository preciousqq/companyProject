/*数据库的创建代码*/
create database westos

--打开数据库
use westos

--创建数据表

--创建部门表
create table dept
(
	d_id  int auto_increment primary key,
	d_name varchar(30) not null,
	d_address varchar(50),
	d_tel  varchar(11),
	d_emp  varchar(10)
)
--员工表
create table emp
(
	e_id   varchar(10)    primary key,
	e_name varchar(20)	  not null,
	e_sex  varchar(10)	  ,
	e_date  date	 ,
	e_mizu	varchar(20)	,
	e_jiguan varchar(30),
	e_shenfen varchar(18),
	e_img    varchar(50),
	e_xueli   varchar(20),
	e_zhuanye	varchar(20),
	e_dangyuan  varchar(10),
	e_hunyin varchar(10),
	e_youbian varchar(10),
	e_address  varchar(50),
	e_gphone	varchar(11),
	e_phone	  varchar(11),
	e_qq      varchar(15),
	e_email	  varchar(50),
	e_yuanxiao varchar(20),
	e_xueli2	varchar(20),
	e_zhuanye2  varchar(20),
	e_biyeriqi      date,
	e_biyexuexiao  varchar(20),
	e_shuiping varchar(20),
	e_techeng varchar(50),
	e_aihao  varchar(50),
	e_rudangriqi date,
	e_youbian2 varchar(10),
	e_address2 varchar(50),
	e_jishufangxiang varchar(50),
	e_zhicheng varchar(20),
	d_id int ,
	foreign key (d_id) references dept(d_id)
)

--职务及合同
 create table hetong
 (
   h_id int  primary key auto_increment,
   h_zhiwu varchar(20),
   h_start date,
   h_over date,
   h_xingshi varchar(20),
   h_ruzhiriqi date,
   h_zhuanzhengriqi date,
   h_lizhiriqi date,
   h_lizhiyuanyin varchar(50),
   h_gongling  int ,
   h_zhanghao varchar(20),
   h_kaihuhang varchar(50),
   h_shebao float,
   h_yibao  float,
   h_yanglaobao float,
   h_shiyebao float,
   h_gongshangbao float,
   h_gongjijinhao varchar(20),
   e_id varchar(10),
   foreign key (e_id) references emp(e_id)
   
 
 )
--创建系别表
create table xibie
(
	x_id   varchar(10)  primary key,
	x_name  varchar(20) not null,
	e_id   varchar(10),
	
	foreign key (e_id) references emp(e_id)
	
)

--班级表
create  table  banji
(
	b_id  varchar(10)  primary key,
	b_name   varchar(50)  not null,
	b_count  int ,
	e_id    varchar(10),
	x_id    varchar(10),
	
	foreign key (e_id) references emp(e_id),
	foreign key (x_id) references xibie(x_id)
	
)

--学员表
create  table  student
(
	s_id  varchar(10)  primary key,
	s_name varchar(20) not null,
	s_sex  varchar(10),
	s_chushengriqi date,
	s_jiguan varchar(20),
	s_minzu  varchar(20),
	s_shenfenzhenghao  varchar(18),
	s_adress  varchar(50),
	s_phone   varchar(11),
	s_qq     varchar(15),
	s_xueli  varchar(20),
	s_yuanxiao varchar(20),
	s_zhuanye  varchar(20),
	s_biyeriqi  date,
	s_zaizhizhuangtai varchar(10),
	b_id  varchar(10),
	foreign key (b_id) references banji(b_id)
	
)

--学员家庭
create table xjiating
(
	j_id int auto_increment  primary key,
	j_name varchar(20),
	j_guanxi varchar(20),
	j_phone  varchar(11),
	j_address varchar(50),
	s_id varchar(10),
	foreign key (s_id) references student(s_id)
)

--课程
create table  kecheng
(
	k_id  varchar(10) primary key,
	k_name varchar(50) not null,
	k_fangxiang varchar(50),
	k_keshi int
)

--任课
create  table renke
(
	k_id  varchar(10),
	e_id   varchar(10),
	primary key (k_id,e_id),
	foreign key (k_id) references kecheng(k_id),
	foreign key(e_id) references emp(e_id)
)

--反馈
create table fankui
(
	f_id   int  auto_increment  primary key,
	e_id  varchar(10),
	k_id  varchar(10),
	f_neirong  varchar(100),
	f_shulianchengdu  int ,
	f_gainianyuanli   int ,
	f_jiaoxueneirong  int ,
	f_xueshushuiping  int ,
	f_luojishuiping   int ,
	f_lianxishiji     int ,
	f_jiaoxuefangfa   int ,
	f_jiaoxueyuyan    int ,
	f_banshukejian    int ,
	f_jiaoxuetaidu    int ,
	f_gerenyijian     varchar(200),
	s_id  varchar(10),
	f_riqi  date,
	foreign key (e_id) references emp(e_id),
	foreign key (k_id) references kecheng(k_id),
	foreign key (s_id) references student(s_id)
	
)

insert into emp(e_id,e_name) values('1001','emp1')

--部门表
--管理员表
create table admin
(
	a_id  varchar(10) primary key,
	a_name varchar(20) not null,
	a_password varchar(50),
	a_root varchar(10),
	a_nicheng varchar(20)
	
)

--新闻管理表
create table news
(
	n_id int auto_increment primary key,
	n_leibie varchar(20) not null,
	n_biaoti varchar(50) not null,
	n_neirong varchar(5000),
	n_date date,
    n_admin varchar(20)
)

--就业管理表
create table job
(
	j_id int auto_increment primary key,
	j_xueyuan varchar(20) not null,
	j_school varchar(50),
	j_zhuanye varchar(50),
	j_danwei varchar(50),
	j_xinzi  varchar(100),
	j_date  date,
	j_admin varchar(20)
)
--公司合作项目
create table comp
(
	c_id int auto_increment primary key,
	c_name varchar(50),
	c_xiangmu varchar(50),
	c_neirong varchar(5000),
	c_date date,
	c_admin varchar(20)
)


---
create  database  student

--