create database FourSneaker;
CREATE TABLE ChucVu (
    IdChucVu int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Code varchar(255) DEFAULT NULL,
    TenChucVu nvarchar(255) DEFAULT NULL
);
CREATE TABLE NhanVien (
		IdNhanVien int NOT NULL IdENTITY(1,1)  PRIMARY KEY,
		MaNhanVien  varchar(255) DEFAULT NULL,
		TenNhanVien nvarchar(200) DEFAULT NULL,
		SoDienThoai varchar(20) DEFAULT NULL,
		Email varchar(255) DEFAULT NULL,
		AnhNhanVien varchar(255) DEFAULT NULL,
		MatKhau varchar(255) DEFAULT NULL,
		AuthProvider varchar(25) DEFAULT NULL,
		DiaChi varchar(255) DEFAULT NULL,
		NgayCapNhat Datetime DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NguoiCapNhat varchar(255) DEFAULT NULL,
		NguoiTao varchar(255) DEFAULT NULL,
		KichHoat bit DEFAULT NULL,	  
		TrangThai int DEFAULT (0),
		IdVaiTro int FOREIGN KEY REFERENCES ChucVu(IdChucVu)
)
CREATE TABLE TrangThai (
		IdTrangThai int NOT NULL IdENTITY(1,1)  PRIMARY KEY ,
		TenTrangThai nvarchar(255) DEFAULT NULL		
)  


CREATE TABLE ChatLieu (
		IdChatLieu int NOT NULL IdENTITY(1,1)  PRIMARY KEY,
		TenChatLieu nvarchar(255) NOT NULL,
		NgayCapNhat Datetime DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NguoiCapNhat varchar(255) DEFAULT NULL,
		NguoiTao varchar(255) DEFAULT NULL,
		KichHoat bit DEFAULT NULL
)
CREATE TABLE KichCo (
		IdKichCo int NOT NULL IdENTITY(1,1)  PRIMARY KEY,
		MaKichCo nvarchar(255),
		TenKichCo nvarchar(255) NOT NULL,
		NgayCapNhat Datetime DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NguoiCapNhat varchar(255) DEFAULT NULL,
		NguoiTao varchar(255) DEFAULT NULL,
		KichHoat bit DEFAULT NULL
)

CREATE TABLE KieuDang (
		IdKieuDang int NOT NULL IdENTITY(1,1)  PRIMARY KEY,
		TenKieuDang nvarchar(255) NOT NULL,
		NgayCapNhat Datetime DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NguoiCapNhat varchar(255) DEFAULT NULL,
		NguoiTao varchar(255) DEFAULT NULL,
		KichHoat bit DEFAULT NULL
)

CREATE TABLE ThuongHieu (
		IdThuongHieu int NOT NULL IdENTITY(1,1)   PRIMARY KEY,
		TenThuongHieu nvarchar(50) NOT NULL,
		NgayCapNhat Datetime DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NguoiCapNhat varchar(255) DEFAULT NULL,
		NguoiTao varchar(255) DEFAULT NULL,
		KichHoat bit DEFAULT NULL
) 

CREATE TABLE MauSac (
		IdMauSac int NOT NULL IdENTITY(1,1)  PRIMARY KEY,
		MaMauSac nvarchar(30) NOT NULL,
		TenMauSac nvarchar(50) NOT NULL,
		NgayCapNhat Datetime DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NguoiCapNhat varchar(255) DEFAULT NULL,
		NguoiTao varchar(255) DEFAULT NULL,
		KichHoat bit DEFAULT NULL
)

CREATE TABLE DayGiay(
		IdDayGiay int identity(1,1) not null primary key,
		TenDayGiay nvarchar(255) not null,
		NgayCapNhat Datetime DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NguoiCapNhat varchar(255) DEFAULT NULL,
		NguoiTao varchar(255) DEFAULT NULL,
		KichHoat bit DEFAULT NULL
)

CREATE TABLE DeGiay(
		IdDeGiay int identity(1,1) not null primary key,
		TenDeGiay nvarchar(255) not null,
		NgayCapNhat Datetime DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NguoiCapNhat varchar(255) DEFAULT NULL,
		NguoiTao varchar(255) DEFAULT NULL,
		KichHoat bit DEFAULT NULL
)

CREATE TABLE KhachHang (
		IdKhachHang int IdENTITY(1,1)  PRIMARY KEY,
		HoTen nvarchar(255) DEFAULT NULL,
		SoDienThoai varchar(255) DEFAULT NULL,
		Email varchar(255) DEFAULT NULL,
		AuthProvider varchar(25) DEFAULT NULL,
		MatKhau varchar(255) DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NgayCapNhat Datetime DEFAULT NULL,
		NguoiTao varchar(255) DEFAULT NULL,
		NguoiCapNhat varchar(255) DEFAULT NULL,
		KichHoat int DEFAULT NULL,
	
) 
CREATE TABLE DiaChi (
		IdDiaChi int NOT NULL IdENTITY(1,1)  PRIMARY KEY,
		HoTen nvarchar(255) DEFAULT NULL,
		SoDienThoai varchar(255) DEFAULT NULL,
		DiaChi nvarchar(255) NOT NULL,
		DiaChiMacDinh bit DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NgayCapNhat Datetime DEFAULT NULL,
		IdKhachHang int FOREIGN KEY REFERENCES KhachHang(IdKhachHang)
) 



DROP TABLE IF EXISTS KhuyenMai;
CREATE TABLE KhuyenMai (
		IdKhuyenMai int NOT NULL IdENTITY(1,1) PRIMARY KEY,
		TenKhuyenMai nvarchar(255) NOT NULL,
		PhanTramGiam int NOT NULL,
		GiaTriToiDa int NOT NULL,
		NgayCapNhat Datetime DEFAULT NULL,
		NgayTao Datetime DEFAULT NULL,
		NguoiTao varchar(255) DEFAULT NULL,
		NguoiCapNhat varchar(255) DEFAULT NULL,
		NgayBatDau Date NOT NULL,
		NgayKetThuc Date NOT NULL,
		TrangThai smallint DEFAULT '1',
		KichHoat bit DEFAULT NULL,
		CONSTRAINT TenKhuyenMai UNIQUE (TenKhuyenMai)
) 

CREATE TABLE GioHang (
		IdGioHang int NOT NULL IdENTITY(1,1)  PRIMARY KEY,
		IdKhachHang int FOREIGN KEY REFERENCES KhachHang(IdKhachHang)
)  

CREATE TABLE DanhMuc (
    IdDanhMuc int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    TenDanhMuc nvarchar(255) NOT NULL,
    NgayCapNhat Datetime DEFAULT NULL,
    NgayTao Datetime DEFAULT NULL,
    NguoiCapNhat varchar(255) DEFAULT NULL,
    NguoiTao varchar(255) DEFAULT NULL,
    KichHoat bit DEFAULT NULL
);

CREATE TABLE SanPham (
    IdSanPham int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    MaSanPham VARCHAR(50),
    TenSanPham nvarchar(255) NOT NULL,
    NgayCapNhat Datetime DEFAULT NULL,
    NgayTao Datetime DEFAULT NULL,
    NguoiCapNhat varchar(255) DEFAULT NULL,
    NguoiTao varchar(255) DEFAULT NULL,
    KichHoat bit DEFAULT NULL,
    MoTa nvarchar(512) DEFAULT NULL,
    IdChatLieu int FOREIGN KEY REFERENCES ChatLieu(IdChatLieu),
    IdKieuDang int FOREIGN KEY REFERENCES KieuDang(IdKieuDang),
    IdThuongHieu int FOREIGN KEY REFERENCES ThuongHieu(IdThuongHieu),
    IdDanhMuc int FOREIGN KEY REFERENCES DanhMuc(IdDanhMuc),
    Sale float DEFAULT NULL
);

CREATE TABLE SanPhamCT (
    IdSanPhamCT int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Gia Money DEFAULT NULL,
    SoLuong int DEFAULT NULL,
    CoHienThi bit DEFAULT NULL,
    NgayCapNhat Datetime DEFAULT NULL,
    NgayTao Datetime DEFAULT NULL,
    NguoiCapNhat varchar(255) DEFAULT NULL,
    NguoiTao varchar(255) DEFAULT NULL,
    KichHoat bit DEFAULT NULL,
    IdKichCo int FOREIGN KEY REFERENCES KichCo(IdKichCo),
    IdMauSac int FOREIGN KEY REFERENCES MauSac(IdMauSac),
    IdSanPham int FOREIGN KEY REFERENCES SanPham(IdSanPham),
    IdDayGiay int FOREIGN KEY REFERENCES DayGiay(IdDayGiay),
    IdDeGiay int FOREIGN KEY REFERENCES DeGiay(IdDeGiay)
);

CREATE TABLE GioHangCT (
    IdGioHangCT int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    DonGia Money DEFAULT NULL,
    SoLuong int NOT NULL,
    TongTien money NOT NULL,
    KichHoat bit DEFAULT NULL,
    IdGioHang int FOREIGN KEY REFERENCES GioHang(IdGioHang),
    IdSanPhamCT int FOREIGN KEY REFERENCES SanPhamCT(IdSanPhamCT)
);

CREATE TABLE HinhAnh (
    IdHinhAnh int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    TenAnh nvarchar(200) NOT NULL,
    HienThi bit DEFAULT NULL,
    LaAnhChinh bit DEFAULT NULL,
    IdSanPham int FOREIGN KEY REFERENCES SanPham(IdSanPham),
    IdMauSac int FOREIGN KEY REFERENCES MauSac(IdMauSac)
);

CREATE TABLE HoaDon (
    IdHoaDon int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    MaDon varchar(50) NOT NULL,
    NguoiNhan nvarchar(50) DEFAULT NULL,
    SoDienThoaiNguoiNhan varchar(10) DEFAULT NULL,
    EmailNguoiNhan varchar(200) DEFAULT NULL,
    DiaChiGiaoHang nvarchar(255) DEFAULT NULL,
    LoaiHoaDon int NOT NULL DEFAULT (0),
    GhiChu nvarchar(50) DEFAULT NULL,
    TienShip money DEFAULT NULL,
    TienGiam money DEFAULT NULL,
    TongTienDonHang money DEFAULT NULL,
    TongTienHoaDon money DEFAULT NULL,
    NgayTao Datetime DEFAULT NULL,
    NguoiTao varchar(255) DEFAULT NULL,
    KichHoat bit DEFAULT NULL,
    IdKhachHang int FOREIGN KEY REFERENCES KhachHang(IdKhachHang),
    IdKhuyenMai int FOREIGN KEY REFERENCES KhuyenMai(IdKhuyenMai),
    IdNhanVien int FOREIGN KEY REFERENCES NhanVien(IdNhanVien),
    IdTrangThai int FOREIGN KEY REFERENCES TrangThai(IdTrangThai)
);

CREATE TABLE HoaDonCT (
    IdHoaDonCT int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    DonGia int NOT NULL,
    SoLuong int NOT NULL,
    TongTien money NOT NULL,
    KichHoat bit DEFAULT NULL,
    IdHoaDon int FOREIGN KEY REFERENCES HoaDon(IdHoaDon),
    IdSanPhamCT int FOREIGN KEY REFERENCES SanPhamCT(IdSanPhamCT)
);

CREATE TABLE LichSuHoaDon (
    IdLichSuHoaDon int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    ThaoTac nvarchar(255) DEFAULT NULL,
    NgayTao Datetime DEFAULT NULL,
    NguoiThaoTac varchar(255) DEFAULT NULL,
    IdTrangThai int,
    IdHoaDon int FOREIGN KEY REFERENCES HoaDon(IdHoaDon)
);

CREATE TABLE GiaoDich (
    IdGiaoDich int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    NguoiTao nvarchar(255) DEFAULT NULL,
    NgayTao Datetime,
    IdHoaDon int FOREIGN KEY REFERENCES HoaDon(IdHoaDon),
    IdNhanVien int FOREIGN KEY REFERENCES NhanVien(IdNhanVien),
    IdTrangThai int FOREIGN KEY REFERENCES TrangThai(IdTrangThai)
);