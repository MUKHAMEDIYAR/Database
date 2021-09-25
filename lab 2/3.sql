
a)
CREATE TABLE students(
 ID varchar(10) NOT NULL PRIMARY KEY UNIQUE,
 full_name varchar(50) NOT NULL,
 age smallint NOT NULL,
 bird_date date NOT NULL,
 gender varchar(5) NOT NULL,
 average_grade numeric(3,2) NOT NULL,
 info_a_yself text NOT NULL,
 need_for_dorm boolean,
 add_info text
);
 b)
CREATE TABLE instructor(
 ID varchar(10) NOT NULL UNIQUE PRIMARY KEY,
 full_name varchar(50) NOT NULL,
 speaking_language varchar(15) NOT NULL,
 work_experience text NOT NULL,
 pos_having_remote_lessons boolean NOT NULL
);
 c)
CREATE TABLE lesson_participants(
 title varchar(20) NOT NULL,
 teaching_ins varchar(10) references instructor(ID),
 studying_students varchar(10) references students(ID),
 room_number smallint NOT NULL UNIQUE
);
