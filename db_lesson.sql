Q1
create table departments (
  department_id INT unsigned primary key not null auto_increment,
  name varchar(20) not null,
  created_at timestamp null default CURRENT_TIMESTAMP ,
  updated_at TIMESTAMP null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

Q2
alter table people add department_id INT unsigned null after email;

Q3
insert into departments (department_id, name) 
values 
(1, '営業'),
(2, '開発'),
(3, '経理'),
(4, '人事'),
(5, '情報システム');

insert into people (name, department_id) 
values 
('ボーボボ', 1),
('首領パッチ', 1),
('天の助', 1),
('ピカチュウ', 2),
('コウメ太夫', 2),
('HG', 2),
('角田', 2),
('ウシジマ', 3),
('村上春樹', 4),
('乾貞治', 5);

insert into reports (person_id, content) 
values 
(1 , 'ああああああああああ'),
(2 , 'いいいいいいいいいい'),
(3 , 'うううううううううう'),
(4 , 'ええええええええええ'),
(6 , 'おおおおおおおおおお'),
(7 , 'カカカカかかかかかか'),
(8 , 'きききききききききき'),
(9 , 'くくくくくくくくくく'),
(10 , 'けけけけけけけけけけ'),
(11 , 'ここここここここここ');

Q4
UPDATE people SET department_id = 1 WHERE person_id between 1 and 6;

Q5
select name, age from people where gender = "1" order by age desc;

Q6
SELECT `name`, `email`, `age`で指定したカラムを
  FROM `people` で指定したテーブルの中から
  WHERE `department_id` = 1 で指定した条件に完全一致するレコードを
  ORDER BY `created_at`; 作成時間順に昇順に並べて取得する

Q7
select name from people where gender =1 and age between 40 and 49 or gender =2 and age between 20 and 29;

Q8
select * from people where department_id = 1 order by age asc;

Q9
select avg(age) as average_age from people where department_id =2;

Q10
select people.name, departments.name,reports.content from people inner join departments on people.department_id = departments.department_id inner join reports on people.person_id = reports.person_id;

Q11
select people.name from people left outer join reports on people.person_id = reports.person_id where reports.content is null;