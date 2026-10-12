USE QuanLySinhVien;

-- 1. Hien thi tat ca hoc vien
SELECT *
FROM Student;

-- 2. Hien thi hoc vien dang theo hoc
SELECT *
FROM Student
WHERE Status = TRUE;

-- 3. Hien thi cac mon hoc co thoi gian hoc nho hon 10 gio
SELECT *
FROM Subject
WHERE Credit < 10;

-- 4. Hien thi hoc vien lop A1
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student AS S
JOIN Class AS C ON S.ClassId = C.ClassID
WHERE C.ClassName = 'A1';

-- 5. Hien thi diem mon CF cua cac hoc vien
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student AS S
JOIN Mark AS M ON S.StudentId = M.StudentId
JOIN Subject AS Sub ON M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';
