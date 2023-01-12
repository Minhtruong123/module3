use quan_ly_sinh_vien;

insert into class(class_id, class_name, start_date, `status`) values 
(1, 'A1', '2008-12-20',1),
(2, 'A2', '2008-12-22',1),
(3, 'AB3', curdate(),0);

insert into student(student_id, student_name, address, phone, `status`, class_id) values
(1, 'Hung', 'Ha Noi', '0912113113', 1, 1),
(2, 'Hoa', 'Hai Phong', '', 1, 1),
(3, 'Manh', 'Ho Chi Minh', '0123123123', 0, 2);

insert into `subject`(sub_id, sub_name, credit, `status`) values
(1, 'CF', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);

insert into mark(mark_id, sub_id, student_id, mark, exam_times) values
(1,1,1,8,1),
(2,1,2,10,2),
(3,2,1,12,1);