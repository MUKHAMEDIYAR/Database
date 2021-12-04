create table customers (
 customer_id int not null unique ,
 first_name varchar(20) not null,
 last_name varchar(20) not null,
 phone varchar(20) not null ,
 email varchar (20) not null ,
 street varchar (20) not null ,
 city varchar (20) not null ,
 primary key (customer_id)
);

create table orders(
    order_id integer primary key ,
    customer_id varchar (255),
    order_date date,
    required_date date,
    shipped_date date,
    store_id int not null ,
    staff_id int not null
);
create table staffs(
    staff_id integer primary key ,
    first_name varchar(255),
    last_name varchar(255),
    phone varchar (255),
    email varchar (255),
    store_id int not null references stores(store_id),
    manager_id int not null
);
create table stores(
    store_id integer primary key,
    store_name integer,
    phone varchar (255),
    email varchar (255),
    street varchar (255),
    city varchar (255)
);
create table stocks(
    store_id integer primary key ,
    product_id  int not null,
    quantity varchar(255)
);
create table products(
    product_id integer primary key,
    product_name varchar (255),
    brand_id varchar (255),
    category_id int not null ,
    model_year varchar (255),
    list_price varchar (255)
);
create table categories(
  category_id integer primary key ,
  categoty_name varchar (255)
);
create table order_items(
  order_id  integer primary key,
  item varchar (255),
  product_id int not null references products(product_id),
  quantity varchar (255),
  list_price varchar (255),
  discount varchar (255)
);
create table brands(
    brand_id integer primary key,
    brand_name varchar (255)
);

insert into customers(customer_id, first_name, last_name, phone, email, street, city) VALUES (1,'Mukhamediyar','Seit',87472501193,'seit03@list.ru','Bekpenbet 34','Taraz');
insert into customers VALUES (2,'Aibat','Akkas',87075845288,'Akkas03@list.ru',' Kenen 24','Korday');
insert into customers VALUES (3,'Baishat','Tokmukamet',87054464515,'baia@mail.ru',' Dala 14','Shelek');
insert into customers VALUES (4,'Saken','Aikyn',87078384484,'sake@mail.ru',' Karabai 34','Taldykorgan');
insert into customers VALUES (5,'Bek','Konarbay',87753489358,'Bek@list.ru',' Sary 12','Korday');
insert into customers VALUES (6,'Ramazan','Saken',87475755324,'Saken02@list.ru',' Abay 52','Taraz');
insert into customers VALUES (7,'Jasulan','Omirtay',87775524851,'Jasic@list.ru',' Abay 50','Taraz');
insert into customers VALUES (8,'Jansaya','Kydyrali',87754684384,'Jons03@mail.ru',' Sarybay 36','Taraz');
insert into customers VALUES (9,'Orazbek','Karabai',87777864259,'Kara00@list.ru',' Koshkin 15','Aktau');
insert into customers VALUES (10,'Gulmira','Abibulla',87078745528,'Abi@list.ru','Sarybay 28','Taraz');
insert into customers VALUES (11,'Arujan','Kanat',87758284695,'Aru03@mail.ru',' Ermekbai 07','Taraz');
insert into customers VALUES (12,'Asan','Perdesh',87475828497,'Asan97@mail.ru',' Aues 25','Almaty');
insert into customers VALUES (13,'Nurzat','Zhandos',87072546858,'Zhandosss03@list.ru','Moldanazar 42','Taraz');
insert into customers VALUES (14,'Nurbek','Beken',87052483252,'Nuric0@list.ru',' Kenes 11','Astana');
insert into customers VALUES (15,'Burka','Oskun',87077483388,'Buuuuruur@list.ru',' Suleiman 32','Taraz');
insert into customers VALUES (16,'Kambar','Bekzat',87072135412,'Kambar@mail.ru',' Oran 18','Aktobe');
insert into customers VALUES (17,'Meirambek','Berish',87475381887,'Berik@list.ru',' Masakbai 45','Atyrau');
insert into customers VALUES (18,'Farid','Kasmar',87472351359,'Kasmar@list.ru',' Karym 12','Shymkent');
insert into customers VALUES (19,'Victor','Zoi',87777882486,'Zoi03@list.ru',' Mahan 6','Kysylorda');
insert into customers VALUES (20,'Kristofer','Kolumb',87055824682,'Kris@list.ru',' Semisbay 8','Kostanay');
insert into customers VALUES (21,'Seric','Gaizin',87078268475,'Gaizini@list.ru',' Orynbay 54','Pavlodar');
insert into customers VALUES (22,'Arys','Aibek',87775814682,'Aibek@list.ru',' Oruk 21','Petropavl');
insert into customers VALUES (23,'Zarina','Syrym',87074751462,'Syrym@list.ru',' Sary 28','Oral');
select * from customers;

insert into orders(order_id, customer_id, order_date, required_date, shipped_date, store_id, staff_id) values (111,123,'15.04.2021','15.04.2021','15.04.2021',254,245);
insert into orders values (112,124,'02.04.2021','02.04.2021','02.04.2021',255,202);
insert into orders values (113,125,'03.04.2021','03.04.2021','03.04.2021',256,203);
insert into orders values (114,126,'04.04.2021','04.04.2021','04.04.2021',257,204);
insert into orders values (115,127,'05.04.2021','05.04.2021','05.04.2021',258,205);
insert into orders values (116,128,'06.04.2021','06.04.2021','06.04.2021',259,206);
insert into orders values (117,129,'07.04.2021','07.04.2021','07.04.2021',260,207);
insert into orders values (118,130,'08.04.2021','08.04.2021','08.04.2021',261,208);
insert into orders values (119,131,'09.04.2021','09.04.2021','09.04.2021',262,209);
insert into orders values (120,132,'10.04.2021','10.04.2021','10.04.2021',263,210);
insert into orders values (121,133,'11.04.2021','11.04.2021','11.04.2021',264,211);
insert into orders values (122,134,'12.04.2021','12.04.2021','12.04.2021',265,212);
insert into orders values (123,135,'13.04.2021','13.04.2021','13.04.2021',266,213);
insert into orders values (124,136,'14.04.2021','14.04.2021','14.04.2021',267,214);
insert into orders values (125,137,'15.04.2021','15.04.2021','15.04.2021',268,215);

select * from orders;

insert into staffs(staff_id, first_name, last_name, phone, email, store_id, manager_id) VALUES (1,'Aibat','Maratov',87075845288,'Marat@list.ru',646,757);
insert into staffs values (2,'Berik','Hasen',87075845288,'Hasen@list.ru','647','758');
insert into staffs values (3,'Askar','Mynbai',87075845288,'Mun@list.ru','648','759');
insert into staffs values (4,'Aiana','Maratova',87075845288,'Aia@list.ru','649','760');
insert into staffs values (5,'Gulgaisha','Bekenova',87075845288,'Gul@list.ru','650','761');
insert into staffs values (6,'Seric','Muratov',87075845288,'Murat@list.ru','651','762');
insert into staffs values (7,'Jenis','Kanatov',87075845288,'Jeka@list.ru','652','763');
insert into staffs values (8,'Jaina','Samatova',87075845288,'Jaina@list.ru','653','764');
insert into staffs values (9,'Aigul','Umbetova',87075845288,'Aiu@list.ru','654','765');
insert into staffs values (10,'Yeric','Temirbai',87075845288,'Yeric@list.ru','655','766');
insert into staffs values (11,'Nurtai','Beisen',87075845288,'Beisen@list.ru','656','767');
insert into staffs values (12,'Asfaruh','Temirov',87075845288,'Temir@list.ru','657','768');
insert into staffs values (13,'Farida','Saparbai',87075845288,'Saru@list.ru','658','769');
insert into staffs values (14,'Halida','Ostemir',87075845288,'Holy@list.ru','659','770');
insert into staffs values (15,'Taryn','Kopyr',87075845288,'Kopyr@list.ru','660','771');
insert into staffs values (16,'Garic','Harlamov',87075845288,'Gari@list.ru','661','772');
insert into staffs values (17,'Sergey','Ptushkin',87075845288,'Ptush@list.ru','662','773');
insert into staffs values (18,'Adilet','Satubek',87075845288,'Adi@list.ru','663','774');
insert into staffs values (19,'Baiyn','Kasymbek',87075845288,'Kasy@list.ru','664','775');

insert into stores(store_id, store_name, phone, email, street, city) VALUES (646,'001','87475582525','Rosy@list.ru','Rosybakiev','Almaty');
insert into stores VALUES (646,'001','87475582525','Rosy@list.ru','Rosybakiev','Almaty');
insert into stores VALUES (647,'001','87475582525','Rosy@list.ru','Rosybakiev','Almaty');
insert into stores VALUES (648,'001','87475582525','Rosy@list.ru','Rosybakiev','Almaty');
insert into stores VALUES (649,'001','87475582525','Rosy@list.ru','Rosybakiev','Almaty');
insert into stores VALUES (650,'001','87475582525','Rosy@list.ru','Rosybakiev','Almaty');
insert into stores VALUES (651,'001','87475582525','Rosy@list.ru','Rosybakiev','Almaty');
insert into stores VALUES (652,'002','87475553232','Aues@list.ru','Auesov','Almaty');
insert into stores VALUES (653,'002','87475553232','Rosy@list.ru','Auesov','Almaty');
insert into stores VALUES (654,'002','87475553232','Rosy@list.ru','Auesov','Almaty');
insert into stores VALUES (655,'002','87475553232','Rosy@list.ru','Auesov','Almaty');
insert into stores VALUES (656,'002','87475553232','Rosy@list.ru','Auesov','Almaty');
insert into stores VALUES (657,'002','87475553232','Rosy@list.ru','Auesov','Almaty');
insert into stores VALUES (658,'003','87475356464','Sat@list.ru','Satbaev','Almaty');
insert into stores VALUES (659,'003','87475356464','Sat@list.ru','Satbaev','Almaty');
insert into stores VALUES (660,'003','87475356464','Sat@list.ru','Satbaev','Almaty');
insert into stores VALUES (661,'003','87475356464','Sat@list.ru','Satbaev','Almaty');
insert into stores VALUES (662,'003','87475356464','Sat@list.ru','Satbaev','Almaty');
insert into stores VALUES (663,'003','87475356464','Sat@list.ru','Satbaev','Almaty');
insert into stores VALUES (664,'003','87475356464','Sat@list.ru','Satbaev','Almaty');

insert into stocks(store_id, product_id, quantity) VALUES (254,654,400);
insert into stocks values (255,655,200);
insert into stocks values (256,656,150);
insert into stocks values (257,657,222);
insert into stocks values (258,658,250);
insert into stocks values (259,659,100);
insert into stocks values (260,660,50);
insert into stocks values (261,661,150);
insert into stocks values (262,662,60);
insert into stocks values (263,663,300);
insert into stocks values (264,664,160);
insert into stocks values (265,665,230);
insert into stocks values (266,666,90);

insert into products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES (2425,'Poco X3 Pro 128GB',242,10,2021,'130000');
insert into products VALUES (2426,'Poco X2 Pro 128GB',243,9,2021,'100000');
insert into products VALUES (2427,'Poco X Pro 128GB',244,8,2021,'80000');
insert into products VALUES (2428,'Xiaomi MiJia Robot Vacuum Mop P',245,10,2021,'118000');
insert into products VALUES (2429,'Xiaomi 11 Lite 5G NE 128GB/6GB',246,10,2021,'130000');
insert into products VALUES (2430,'Xiaomi Mi Air 2s',247,9,2021,'25000');
insert into products VALUES (2431,'Sony WH-1000XM4',248,8,2021,'130000');
insert into products VALUES (2432,'Lenovo Tab M10 HD 2nd Gen LTE 32GB/2GB',249,10,2021,'81000');
insert into products VALUES (2433,'Lenovo Tab M7 TB-7305F 16GB',250,10,2021,'34000');
insert into products VALUES (2434,'Indesit IWSB 5105',246,10,2021,'92000');
insert into products VALUES (2435,'LG F1096SDS0',247,9,2021,'240000');
insert into products VALUES (2436,'Q&Q M010J002Y',248,8,2021,'11000');
insert into products VALUES (2437,'Canon 50mm f/1.8 EF STM',249,10,2021,'70000');
insert into products VALUES (2438,'Ноутбук Apple MacBook Pro 13 2020 8th Gen Intel',250,10,2021,'730000');

insert into categories(category_id, categoty_name) values ('1','Electronic');
insert into categories values ('2','Electehnic');
insert into categories values ('3','Elecmehanic');


insert into order_items(order_id, item, product_id, quantity, list_price, discount) values (1,'45',2425,10,130000,6500);
insert into order_items values (2,'46',2426,10,100000,5000);
insert into order_items values (3,'47',2427,10,80000,4000);
insert into order_items values (4,'48',2428,10,118000,6000);
insert into order_items values (5,'49',2429,10,130000,6500);
insert into order_items values (6,'50',2430,10,25000,2500);
insert into order_items values (7,'51',2431,10,130000,6500);
insert into order_items values (8,'52',2432,10,81000,4000);
insert into order_items values (9,'53',2433,10,34000,3000);
insert into order_items values (10,'54',2434,10,92000,5000);
insert into order_items values (11,'55',2435,10,240000,5000);
insert into order_items values (12,'56',2436,10,11000,5000);
insert into order_items values (13,'57',2437,10,70000,5000);
insert into order_items values (14,'57',2438,10,730000,5000);

insert into brands(brand_id, brand_name) values (1,'Lenovo');
insert into brands(brand_id, brand_name) values (2,'Huawei');
insert into brands(brand_id, brand_name) values (3,'Alibaba');
insert into brands(brand_id, brand_name) values (4,'Xiaomi');
insert into brands(brand_id, brand_name) values (5,'Haier');
insert into brands(brand_id, brand_name) values (6,'Samsung');
insert into brands(brand_id, brand_name) values (7,'LG');


