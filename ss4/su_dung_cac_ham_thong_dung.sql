use quan_ly_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất
select * from `subject`
where credit = (select max(credit) from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất
select student_name, sub_name, mark, exam_times from mark
join `subject` sub on mark.sub_id = sub.sub_id
join student st on mark.student_id = st.student_id
where mark = (select max(mark) from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select student_name, avg(mark) from mark
join student st on mark.student_id = st.student_id
group by student_name
order by mark desc;