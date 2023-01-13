use c1022g1_module_3;

-- Hiện thị danh sách các lớp có học viên theo học và số lượng học viên của mỗi lớp 
select class.`name` 'Lớp', count(*) 'Số học viên' from class
join student on student.class_id = class.id
group by class_id;

-- Tính điểm lớn nhất của mỗi các lớp
select class.`name` 'Lớp', max(student.`point`) 'Điểm cao nhất' from class
join student on student.class_id = class.id
group by class_id;

-- Tình điểm trung bình  của từng lớp
select class.`name` 'Lớp', avg(student.`point`) 'Điểm cao nhất' from class
join student on student.class_id = class.id
group by class_id;

--  Lấy ra toàn bộ tên và ngày sinh các instructor và student ở CodeGym
select `name`, birthday from student
union
select `name`, birthday from instructor;

-- Lấy ra top 3 học viên có điểm cao nhất của trung tâm
select name, birthday, point from student
order by student.point desc
limit 3;

-- Lấy ra các học viên có điểm số là cao nhất của trung tâm
select name, birthday, point from student
order by student.point desc
limit 1;