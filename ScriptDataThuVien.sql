-- Cho phep tieng viet trong CSDL 
DROP TABLE THONGTINSACH;
DROP TABLE DOCGIA;
DROP TABLE MUON;
ALTER DATABASE thuvien CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Tao cac bang voi cac khoa ngoai tuong ung
CREATE TABLE THONGTINSACH(
  id_sach INT NOT NULL AUTO_INCREMENT,
  ten_sach VARCHAR(255) NOT NULL,
  tacgia VARCHAR(255) NOT NULL,
  nha_xuat_ban VARCHAR(255) NOT NULL,
  mo_ta TEXT NOT NULL,
  the_loai VARCHAR(255) NOT NULL,
  sach_mat BOOLEAN NOT NULL,
  sach_hong BOOLEAN NOT NULL,
  PRIMARY KEY (id_sach)
);
CREATE TABLE DOCGIA(
  id_doc_gia INT NOT NULL AUTO_INCREMENT,
  ten VARCHAR(255) NOT NULL,
  dia_chi VARCHAR(255) NOT NULL,
  dien_thoai VARCHAR(20) NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (id_doc_gia)
);

CREATE TABLE MUON(
  id_muon INT NOT NULL AUTO_INCREMENT,
  id_sach INT NOT NULL,
  id_doc_gia INT NOT NULL,
  ngay_muon date NOT NULL,
  han_tra date NOT NULL,
  ngay_tra date,
  FOREIGN KEY(id_sach) REFERENCES THONGTINSACH(id_sach),
  FOREIGN KEY (id_doc_gia) REFERENCES DOCGIA(id_doc_gia),
  PRIMARY KEY (id_muon)
);

-- Du lieu bang doc gia
INSERT INTO `thuvien`.`docgia` ( `ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ( 'Khánh Phan', '4, Thôn 6, Thôn Nhu Quỳnh, Huyện Tuyết Cương Bắc Kạn', '0936247460', 'dinh.lieu@mach.health.vn ');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Trúc Phạm', '6020 Phố Tăng Thành Ty, Phường Biện, Huyện 49', '0936247461', 'trieu.than@hang.int.vn');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Bá Hồng', '13, Ấp Sỹ Bổng, Thôn Nữ Cần, Quận Ngọc Tường', '0936247462', 'nhien.dinh@hotmail.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Diễm Yến', '3 Phố Thào Đàn Ly, Phường Trực Khanh, Quận  n Cơ', '0936247463', 'wchung@tieu.info.vn');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Trí Đỗ', '751 Phố Danh, Phường 63, Quận Lô An Bạch Hà Nội', '0936247464', 'thuy33@co.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Kiên Chí', '04, Thôn Nhàn My, Thôn Phan San, Quận Hứa Kiên Giang ', '0936247465', 'doan.thap@dinh.com ');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Hạnh Khương', '2977 Phố Ty Phú Bình, Thôn Cảnh Xuyến, Quận 11 Hưng Yên', '0936247467', 'diep54@yahoo.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Khang Chiến', '7688 Phố Yên Lam Luật, Phường 3, Huyện 56 Khánh Hòa', '0936247468', 'thai.danh@gmail.com ');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Quỳnh Bích', '0 Phố Kha Dao Duyên, Xã Sơn Mẫn, Huyện 5 Thái Nguyên', '0936247469', 'pphung@ung.health.vn ');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Hạnh Kiến', '3349 Phố Ngô, Xã Kiên An, Huyện Hải Bến Tre', '0936247470', 'cty@yahoo.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Kiều Ái', '64 Phố Học, Xã Tuệ Giang, Quận 0 Hải Phòng', '0936247471', 'wcam@nguy.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Vũ Thảo', '018 Phố Xa, Xã Đinh Dụng Oanh, Huyện Anh Hồ Chí Minh', '0936247472', 'rtrieu@gmail.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Nghi Phạm', '8519, Ấp 31, Xã 6, Quận 7 Vĩnh Long', '0936247473', 'qtu@gmail.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Nga Tràm', '415 Phố Chương Đường Chinh, Xã Văn Nhân Thương, Huyện Sương Di Bắc Giang ', '0936247474', 'bluong@phi.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Anh Minh', '47 Phố Triệu Hân Ái, Xã Ý Thào, Quận Đài Trịnh Đắk Nông ', '0936247475', 'scai@hinh.ac.vn');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Hoàng Hải', '8 Phố Nhâm, Xã Hoa, Quận Lâm Ánh Đà Nẵng ', '0936247476', 'trung.phung@thai.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Quang Hạo', '350, Thôn 11, Ấp Khương Trúc, Quận Ong Hiệp Thạc Bắc Kạn', '0936247477', 'ma.thong@lo.mil.vn');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Huyền Mẫn', '6 Phố Tào Hợp Loan, Phường Tuệ, Quận Mâu Tráng Đồng Tháp', '0936247478', 'duong.trang@gmail.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Thư Chế', '955 Phố Anh, Phường 14, Quận 48 Lào Cai ', '0936247479', 'tvuong@hotmail.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Trọng Ngọc', '91, Ấp Hiếu Vịnh, Xã Dã, Quận 08 Tiền Giang', '0936247480', 'quan.nghiem@yahoo.com ');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Bích Tràm', '9 Phố Ngụy Vương Quốc, Thôn Hán Cát, Huyện Hoan Khưu Thừa Thiên Huế', '0936247481', 'trinh.chung@hotmail.com');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Nam Hải', '728 Phố Đổng Ngọc Khanh, Thôn Thạch Dân, Quận 3 Đà Nẵng', '0936247482', 'linh15@lam.org.vn ');
INSERT INTO `thuvien`.`docgia` (`ten`, `dia_chi`, `dien_thoai`, `email`) VALUES ('Bảo Điền', '04 Phố Cung Linh Điệp, Xã Tiếp, Huyện Trung Trác Hải Phòng ', '0936247483', 'dong.giang@gmail.com');

-- Du lieu bang thong tin sach
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Eloise', 'Nickolas Butler', 'Kim Đồng', '1955', 'Romance ', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Fever', 'Jonah Lehrer', 'Giáo dục', '2012', 'Romance ', '0', '1');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Le avventure di Pinocchio', 'Kay Thompson', 'Giáo dục', '1883', 'Detective ', '1', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Mistral\'s Kiss', 'Lauren DeStefano', 'Hồ Chí Minh', '2006', 'Legend', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Farmer Boy', 'Carlo Collodi', 'Kim Đồng', '1933', 'Romance ', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Pacific Vortex!', 'Laurell K. Hamilton', 'Hồ Chí Minh', '1983', 'Detective ', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Shotgun Lovesongs', ' Laura Ingalls Wilder', 'Chính trị quốc gia sự thật là đơn vị sự nghiệp trung ương của Đảng, xuất bản những cuốn sách về chính', '2014', 'Detective ', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('How We Decide', 'Clive Cussler', 'Hội Nhà văn', '2009', 'Romance ', '1', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Lioness Rampant', 'Nickolas Butler', 'Kim Đồng', '1988', 'Detective ', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Staked', 'Tamora Pierce', 'Kim Đồng', '2016', 'Romance ', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('The Gnostic Gospels', 'Kevin Hearne', 'Hội Nhà văn', '1979', 'Legend', '1', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Mirror Mirror', 'Elaine Pagels', 'Kim Đồng', '2003', 'Legend', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Pulled', 'Gregory Maguire', 'Giáo dục', '2011', 'Romance ', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('The Lottery', 'Amy Lichtenhan', 'Hồ Chí Minh', '1948', 'Fiction', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('My Lady Jane', 'Shirley Jackson', 'Kim Đồng', '2016', 'Romance ', '0', '1');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('The Howling', 'Cynthia Hand', 'Chính trị quốc gia sự thật là đơn vị sự nghiệp trung ương của Đảng, xuất bản những cuốn sách về chính', '1977', 'Fiction', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('The Sandcastle Girls', 'Gary Brandner', 'Chính trị quốc gia sự thật là đơn vị sự nghiệp trung ương của Đảng, xuất bản những cuốn sách về chính', '2012', 'Fiction', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Frindle', 'Chris Bohjalian', 'Giáo dục', '1996', 'Legend', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('An Occurrence at Owl Creek Bridge', 'Andrew Clements', 'Hồ Chí Minh', '1890', 'Fiction', '0', '0');
INSERT INTO `thuvien`.`thongtinsach` (`ten_sach`, `tacgia`, `nha_xuat_ban`, `mo_ta`, `the_loai`, `sach_mat`, `sach_hong`) VALUES ('Foreplay', 'Ambrose Bierce', 'Kim Đồng', '2013', 'Romance ', '0', '0');

-- Du lieu cho muon
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('1', '3', '2023-09-17', '2023-11-17', '2023-10-15');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('5', '7', '2021-05-21', '2021-07-21', '2021-07-20');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('6', '2', '2022-06-07', '2022-08-07', '2022-07-07');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('4', '1', '2021-12-15', '2022-02-15', '2022-02-14');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`) VALUES ('2', '11', '2020-06-04', '2020-08-04');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('4', '5', '2023-03-02', '2023-05-02', '2023-03-03');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('7', '2', '2023-09-11', '2023-11-11', '2023-09-27');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`) VALUES ('8', '12', '2023-01-27', '2023-03-27');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('3', '5', '2023-02-19', '2023-04-19', '2023-03-03');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('9', '4', '2023-04-13', '2023-06-13', '2023-05-12');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('9', '8', '2023-01-02', '2023-03-02', '2023-01-02');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('19', '23', '2023-03-12', '2023-05-12', '2023-04-04');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`) VALUES ('15', '4', '2023-10-07', '2023-12-07');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('17', '21', '2023-05-05', '2023-07-05', '2023-05-23');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('12', '22', '2022-01-07', '2022-03-07', '2022-07-07');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('14', '4', '2023-02-18', '2023-04-18', '2024-02-19');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('10', '18', '2023-11-14', '2024-02-14', '2024-03-14');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('13', '19', '2021-08-12', '2021-10-12', '2021-09-16');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('16', '16', '2021-07-18', '2021-09-18', '2021-09-19');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('15', '15', '2022-09-19', '2022-11-19', '2022-12-22');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('11', '11', '2022-09-19', '2022-11-19', '2022-12-22');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('11', '11', '2022-03-19', '2022-05-19', '2022-06-22');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`) VALUES ('15', '17', '2023-10-07', '2023-12-07');
INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`) VALUES ('18', '16', '2023-08-07', '2023-10-07');
-- stored procedure, function, trigger, transaction, index ...

-- procedure la tinh tong tien tin muon tre sach(tra ve bang moi)	
-- Moi ngay tre tra sach la 1000 dong chang han
DELIMITER //
  CREATE PROCEDURE Tinh_Tien_Tre(
  )
  BEGIN
  -- Tạo một temporary table co tong so ngay da tre cua cac doc gia
  CREATE TEMPORARY TABLE Temp_Tre (
	id_doc_gia INT,
    ten_khach CHAR(10),
    so_ngay_tre VARCHAR(45)
  );
  INSERT INTO Temp_Tre (id_doc_gia, ten_khach, so_ngay_tre)
  SELECT docgia.id_doc_gia, docgia.ten,(DATEDIFF(muon.ngay_tra,muon.ngay_muon))
  FROM docgia, muon
  WHERE docgia.id_doc_gia = muon.id_doc_gia AND muon.ngay_tra IS NOT NULL AND muon.ngay_tra> muon.han_tra;
  SELECT Temp_tre.id_doc_gia ,Temp_tre.ten_khach, sum(so_ngay_tre)*1000 AS Tong_Ten_Tre_Sach FROM Temp_tre group by Temp_Tre.id_doc_gia,Temp_tre.ten_khach;
  DROP TEMPORARY TABLE Temp_Tre;
END //

call Tinh_Tien_Tre();
-- So luong sach da muon theo doc gia
DELIMITER //
  CREATE PROCEDURE Thong_tin_doc_gia_muon_sach(
  )
  BEGIN
SELECT docgia.id_doc_gia,docgia.ten,COUNT(*) AS so_lan FROM muon, docgia where docgia.id_doc_gia = muon.id_doc_gia group by muon.id_doc_gia;
  
END 

call Thong_tin_doc_gia_muon_sach();

-- Tim sach theo ten bang func
DELIMITER //
CREATE PROCEDURE Tim_Kiem_Sach_Theo_Ten( 
IN ki_tu CHAR(50))
BEGIN
   SELECT * FROM thuvien.thongtinsach WHERE thongtinsach.ten_sach LIKE CONCAT('%', ki_tu, '%');
END //

CALL Tim_Kiem_Sach_Theo_Ten('ng');

-- Tim sach theo ngay bang func
DELIMITER //
CREATE PROCEDURE Tim_Kiem_Sach_Muon_Theo_Ngay( 
IN ngaystart date,
IN ngayend date)

BEGIN
   SELECT * FROM thuvien.muon WHERE muon.ngay_muon >= ngaystart AND muon.ngay_muon <=ngayend;
END //

CALL Tim_Kiem_Sach_Muon_Theo_Ngay("2023-01-01","2023-12-31");

-- func tra ve tinh trang sach
SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER //
CREATE FUNCTION TINH_TRANG_SACH(p_idSach INT)
RETURNS varchar(100)
BEGIN
  IF (SELECT sach_mat FROM thongtinsach WHERE id_sach = p_idSach)=1 THEN 
	RETURN "Sach da bi mat"; END IF;
  IF (SELECT sach_hong FROM thongtinsach WHERE id_sach = p_idSach)=1 THEN 
	RETURN "Sach da bi hong"; END IF;
  IF (SELECT EXISTS(
    SELECT *
    FROM muon
    WHERE id_sach = p_idSach
)) = 0 THEN 
	RETURN "Sach chua duoc muon"; END IF;
    IF  (SELECT EXISTS(
    SELECT *
    FROM muon
    WHERE id_sach = p_idSach AND muon.ngay_tra IS NULL
)) = 1  THEN 
	RETURN "Sach chua duoc tra"; 
    ELSE RETURN "Sach da duoc muon va tra, co the cho muon"; END IF;
END //

SELECT TINH_TRANG_SACH("18") AS tinhtrangsach;


-- func Tong so luong the loai, may ham khac viet tuong tu
DELIMITER //
CREATE FUNCTION TONG_THE_LOAI(p_theloai VARCHAR(255))
RETURNS INT
BEGIN
DECLARE soluong INT DEFAULT 0; 
  select count(*) INTO soluong FROM thongtinsach where thongtinsach.the_loai LIKE CONCAT('%', p_theloai, '%') group by thongtinsach.the_loai;
  RETURN soluong;
END //

SELECT TONG_THE_LOAI("Romance") AS soluongtheloai;

-- trigger la de bao loi khi nhap sai du lieu vi du ngay tra be hon ngay muon thi trigger sai, hoat tu cap nhat tinh tranh
DELIMITER //
CREATE TRIGGER Prevent_NhapSaiNgay
BEFORE insert ON muon
FOR EACH ROW
BEGIN
    DECLARE v_NgayMuon date;
    DECLARE v_NgayTra date;
       
    SELECT NEW.ngay_muon INTO v_NgayMuon;
    SELECT NEW.ngay_tra INTO v_NgayTra; 
    -- Kiểm tra xem sinh viên thuộc ngành "CNTT&TT" không
    IF v_NgayTra < v_NgayMuon THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ngày trả không được lớn hơn ngày mượn';
    END IF;
END//
DELIMITER ;
DROP TRIGGER Prevent_NhapSaiNgay;

INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('1', '3', '2023-09-17', '2023-11-17', '2022-10-15');

-- Khi them thong tin moi ve muon hay cac bang khac thi khong dung INSERT binh thuong ma dung TRANSACTION kieu nay nha.
DELIMITER //
START TRANSACTION;

INSERT INTO `thuvien`.`muon` (`id_sach`, `id_doc_gia`, `ngay_muon`, `han_tra`, `ngay_tra`) VALUES ('1', '3', '2023-09-17', '2023-11-17', '2022-10-15');


IF @@ERROR = 0 THEN
    COMMIT;
ELSE
    ROLLBACK;
END IF;
END//
-- index de khien cho sort du lieu muot ma honTim_Kiem_Sach_Muon_Theo_Ngay
CREATE INDEX Ten_Index ON docgia( ten);
CREATE INDEX NgayMuon_Index ON muon(ngay_muon);
-- Mo rong la xuat file Excel
-- Cai nay ong co the dung chuc nang dac biet cua file python cua ong 
SELECT COUNT(*) as tong_so_sach FROM thongtinsach;
-- THONG TIN sach muon nhieu nhat, tuong tu sach muon it nhat
  CREATE TABLE Temp_Sach (
	id_sach INT,
    so_lan_muon INT
  );
  INSERT INTO Temp_Sach (id_sach, so_lan_muon)
	SELECT id_sach, COUNT(id_sach) as so_lan_muon from muon group by id_sach;
    SELECT * FROM thongtinsach WHERE thongtinsach.id_sach IN (SELECT id_sach from Temp_Sach WHERE so_lan_muon=(SELECT max(so_lan_muon) from Temp_Sach));
  DROP TABLE Temp_Sach;
-- Bảng sách mượn theo ngày ông làm 2 cái input nhe
CREATE PROCEDURE Tim_Kiem_Sach_Muon_Theo_Ngay( 
IN ngaystart date,
IN ngayend date)

BEGIN
   SELECT * FROM qtdl_thuvien.muon WHERE muon.ngay_muon >= ngaystart AND muon.ngay_muon <=ngayend;
END //

CALL Tim_Kiem_Sach_Muon_Theo_Ngay("2023-01-01","2023-12-31");

-- Bảng số lần mượn thống kê theo tên độc giả.
SELECT muon.id_doc_gia,ten, COUNT(muon.id_doc_gia) as so_lan_muon from muon, docgia where muon.id_doc_gia = docgia.id_doc_gia group by muon.id_doc_gia;

-- Bảng số nợ thống kê theo đọc giả với trễ 1 ngày là 1000 đồng.
DELIMITER //
  CREATE PROCEDURE Tinh_Tien_Tre(
  )
  BEGIN
  -- Tạo một temporary table co tong so ngay da tre cua cac doc gia
  CREATE TEMPORARY TABLE Temp_Tre (
	id_doc_gia INT,
    ten_khach CHAR(10),
    so_ngay_tre VARCHAR(45)
  );
  INSERT INTO Temp_Tre (id_doc_gia, ten_khach, so_ngay_tre)
  SELECT docgia.id_doc_gia, docgia.ten,(DATEDIFF(muon.ngay_tra,muon.ngay_muon))
  FROM docgia, muon
  WHERE docgia.id_doc_gia = muon.id_doc_gia AND muon.ngay_tra IS NOT NULL AND muon.ngay_tra> muon.han_tra;
  SELECT Temp_tre.id_doc_gia ,Temp_tre.ten_khach, sum(so_ngay_tre)*1000 AS Tong_Ten_Tre_Sach FROM Temp_tre group by Temp_Tre.id_doc_gia,Temp_tre.ten_khach;
  DROP TEMPORARY TABLE Temp_Tre;
END //




CREATE TABLE Temp_Tre (
	id_doc_gia INT,
    ten_khach CHAR(10),
    so_ngay_tre VARCHAR(45)
  );
DELIMITER //
  CREATE PROCEDURE Tinh_Tien_Tre(
  )
  BEGIN
  -- Tạo một temporary table co tong so ngay da tre cua cac doc gia
  IF EXISTS (SELECT 1 FROM information_schema.TABLES WHERE TABLE_NAME = 'Temp_tre')
THEN
    TRUNCATE TABLE Temp_tre;
END IF;
  INSERT INTO Temp_Tre (id_doc_gia, ten_khach, so_ngay_tre)
  SELECT docgia.id_doc_gia, docgia.ten,(DATEDIFF(muon.ngay_tra,muon.ngay_muon))
  FROM docgia, muon
  WHERE docgia.id_doc_gia = muon.id_doc_gia AND muon.ngay_tra IS NOT NULL AND muon.ngay_tra> muon.han_tra;
  SELECT Temp_tre.id_doc_gia ,Temp_tre.ten_khach, sum(so_ngay_tre)*1000 AS Tong_Ten_Tre_Sach FROM Temp_tre group by Temp_Tre.id_doc_gia,Temp_tre.ten_khach;
END //


CREATE TABLE temp_ngay(
  id_muon INT NOT NULL,
  id_sach INT NOT NULL,
  id_doc_gia INT NOT NULL,
  ngay_muon date NOT NULL);
  
  DELIMITER //
CREATE PROCEDURE Tim_Kiem_Sach_Muon_Theo_Ngay( 
IN ngaystart date,
IN ngayend date)

BEGIN
  IF EXISTS (SELECT 1 FROM information_schema.TABLES WHERE TABLE_NAME = 'temp_ngay')
THEN
    TRUNCATE TABLE temp_ngay;
END IF;
  INSERT INTO temp_ngay(id_muon,id_sach,id_doc_gia, ngay_muon) 
  SELECT id_muon,id_sach, id_doc_gia, ngay_muon  FROM qtdl_thuvien.muon WHERE muon.ngay_muon >= ngaystart AND muon.ngay_muon <=ngayend;
END //

SELECT Temp_tre.id_doc_gia ,Temp_tre.ten_khach, sum(so_ngay_tre)*1000 AS Tong_Ten_Tre_Sach FROM Temp_tre group by Temp_Tre.id_doc_gia,Temp_tre.ten_khach;

CREATE TABLE Temp_Sach (
	id_sach INT,
    so_lan_muon INT
  );
  INSERT INTO Temp_Sach (id_sach, so_lan_muon)
	SELECT id_sach, COUNT(id_sach) as so_lan_muon from muon group by id_sach;
    SELECT * FROM thongtinsach WHERE thongtinsach.id_sach IN (SELECT id_sach from Temp_Sach WHERE so_lan_muon=(SELECT max(so_lan_muon) from Temp_Sach));
--   DROP TABLE Temp_Sach;
