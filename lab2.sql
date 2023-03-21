Use master 
CREATE DATABASE Quanlidean2
USE Quanlidean2

CREATE TABLE Phancong 
(
Manv VARCHAR(9) not null  ,
Mada VARCHAR(2) not null ,
Thoigian numeric(18,0)  ,
Unique (Manv,Mada) 
)
DROP TABLE Dean
Create table Dean 
(
Mada varchar(2) not null  ,
Tenda nvarchar(50)  ,
Ddiemda varchar(20)  ,
Primary key (Mada) 
)
CREATE TABLE NHANVIEN
(
	MANV VARCHAR(9)  NOT NULL,
	TENLOT NVARCHAR(30),
	TENNV NVARCHAR(30),
	HONV NVARCHAR(15),
	NGSINH smalldatetime ,
	DCHI NVARCHAR(150),
	PHAI NVARCHAR(3),
	LUONG numeric(18,0),
	PHG varchar(9) ,
	
	PRIMARY KEY (MANV)
)
Create table Phongban 
(
Maphg varchar(2) not null  ,
Tenphg nvarchar(20) ,
Primary key  (Maphg)
)
CREATE TABLE THANNHAN
(
	MANV VARCHAR(9) NOT NULL UNIQUE,
	TENTN VARCHAR(20) Not null,
	NGSINH smalldatetime ,
	PHAI VARCHAR(3),
	Quanhe varchar(15),
	
	PRIMARY KEY (TENTN)
)

ALTER TABLE Phancong
ADD CONSTRAINT FK_Phancong_Manv
FOREIGN KEY (Manv)
REFERENCES NHANVIEN (Manv)

ALTER TABLE Phancong
ADD CONSTRAINT FK_Phancong_Madean
FOREIGN KEY (Mada)
REFERENCES  Dean (Mada)

ALTER TABLE THANNHAN
ADD CONSTRAINT FK_THANNHAN_MANV
FOREIGN KEY (MANV)
REFERENCES NHANVIEN (MANV)

SELECT *
FROM Phongban 
INSERT INTO Phongban
VALUES(1,'Quản lý')
INSERT INTO Phongban
VALUES(4,'Điều hành')
INSERT INTO Phongban
VALUES(5,'Nghiên cứu')

SELECT *
FROM NHANVIEN
INSERT INTO NHANVIEN 
	VALUES ('123',N'Đinh', N'Bá', N'Tiến' , '02/27/1982','MỘ ĐỨC','Nam', NULL, 4)
INSERT INTO NHANVIEN 
	values('234','Nguyễn','Thanh','Tùng','08-12-1956','Sơn Tịnh','Nam',null,'5')
INSERT INTO NHANVIEN 
	values('345','Bùi','Thúy','Vũ',null,'Tư Nghĩa','Nữ',null,'4')
INSERT INTO NHANVIEN 
	values('456','Lê','Thị','Nhàn','07-12-1962','Mộ Đức','Nữ',null,'4')
INSERT INTO NHANVIEN 
	values('567','Nguyễn','Mạnh','Hùng','03-25-1985','Sơn Tịnh','Nam',null,'5')
INSERT INTO NHANVIEN 
	values('678','Trần','Hồng','Quan',null,'Bình Sơn','Nam',null,'5')
INSERT INTO NHANVIEN 
	values('789','Trần','Thanh','Tâm','06-17-1972','TP Quảng Ngãi','Nam',null,'5')
INSERT INTO NHANVIEN 
	values('890','Cao','Thanh','Huyền',null,'Tư Nghã','Nữ',null,'1')
INSERT INTO NHANVIEN 
    values('901','Vương','Ngọc','Quyền','12-12-1987','Mộ Đức','Nam',null,'1')
ALTER TABLE NHANVIEN
ADD CONSTRAINT FK_NHANVIEN_PHG
FOREIGN KEY (PHG)
REFERENCES Phongban (Maphg)

delete from NHANVIEN
ALTER TABLE NHANVIEN

ALTER COLUMN PHG  varchar(2);




ALTER TABLE Phongban

ALTER COLUMN Tenphg  nvarchar(30);


ALTER TABLE Dean

ALTER COLUMN Ddiemda  nvarchar(20);


ALTER TABLE THANNHAN

ALTER COLUMN TENTN  nvarchar(20);


ALTER TABLE THANNHAN

ALTER COLUMN PHAI  nvarchar(3);


ALTER TABLE THANNHAN

ALTER COLUMN Quanhe  nvarchar(15);

ALTER TABLE NHANVIEN

ADD SDT varchar(15);

ALTER TABLE NHANVIEN
DROP COLUMN SDT ; 

SELECT *
FROM DEAN
INSERT INTO DEAN (Mada,Tenda,DDiemDa)
values('1','Nâng cao chất lượng muối','Sa Huỳnh')
INSERT INTO DEAN (Mada,Tenda,DDiemDa)
values('10','Xây dựng nhà máy chế biến thủy sản','Dung Quất')
INSERT INTO DEAN (Mada,Tenda,DDiemDa)
values('2','Phát triển hạ tầng mạng','TP Quảng Ngãi')
INSERT INTO DEAN (Mada,Tenda,DDiemDa)
values('20','Truyền tải cáp quang','TP Quảng Ngãi')
INSERT INTO DEAN (Mada,Tenda,DDiemDa)
values('3','Tin học hóa trường học','Ba tơ')
INSERT INTO DEAN (Mada,Tenda,DDiemDa)
values('30','Đào tạo nhân lực','Tịnh Phong')

SELECT *
FROM Phancong
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('123','1','33')
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('123','2','8')
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('345','10','10')
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('345','20','10')
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('345','3','10')
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('456','1','20')
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('456','2','20')
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('678','3','40')
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('789','10','35')
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('789','20','30')
INSERT INTO  Phancong (MaNV,Mada,Thoigian)
values('789','30','5')

SELECT *
FROM THANNHAN
INSERT INTO THANNHAN 
values('123','Châu','10-30-2005','Nữ','Con gái')
INSERT INTO THANNHAN
values('123','Duy','10-25-2001','Nam','Con trai')
INSERT INTO THANNHAN
values('123','Phương','10-30-1985','Nữ','Vợ chồng')
INSERT INTO THANNHAN
values('234','Thanh','04-05-1980','Nữ','Con gái')
INSERT INTO THANNHAN
values('345','Dương','10-30-1956','Nam','Vợ chồng')
INSERT INTO THANNHAN
values('345','Khang','10-25-1982','Nam','Con trai')
INSERT INTO THANNHAN
values('456','Hùng','01-01-1987','Nam','Con trai')
INSERT INTO THANNHAN
values('901','Thương','04-05-1989','Nữ','Vợ chồng')