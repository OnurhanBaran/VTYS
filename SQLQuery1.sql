CREATE DATABASE okulkutuphanesi1;
GO


USE OKULKUTUPHANESI1;
GO


CREATE TABLE UYELER (
    uye_no INT PRIMARY KEY,
    uye_ad NVARCHAR(50),
    uye_soyad NVARCHAR(50),
    telefon VARCHAR(15),
    cinsiyet NVARCHAR (10), 
    eposta VARCHAR (50),
    adres_no INT
);


GO


CREATE TABLE ADRESLER (
    adres_no INT PRIMARY KEY,
    ulke NVARCHAR (50),
    sehir VARCHAR(50),
    cadde VARCHAR(50),
    mahalle VARCHAR(100),
    posta_kodu INT ,
    bina_no INT 
);
GO


CREATE TABLE EMANET (
    emanet_no INT PRIMARY KEY,
    uye_no INT,
    ISBN INT,
    emanet_tarihi DATE,
    teslim_tarihi DATE
);
GO


CREATE TABLE KATEGORÝLER (
    kategori_no INT PRIMARY KEY,
    kategori_adi VARCHAR(50)
);
GO


CREATE TABLE KITAPLAR (
    ISBN INT PRIMARY KEY,
    kitap_adi VARCHAR(100),
    yazar_no INT,
    kategori_no INT,
    sayfa_sayisi INT,
    yayin_tarihi DATE, 
    kutuphane_no INT
);
GO


CREATE TABLE KUTUPHANELER (
    kutuphane_no INT PRIMARY KEY,
    kutuphane_ismi VARCHAR(100),
    aciklama NCHAR (10),
    adres_no INT
);
GO


CREATE TABLE YAZARLAR (
    yazar_no INT PRIMARY KEY,
    yazar_ad VARCHAR(100),
    yazar_soyad VARCHAR(100)
);
GO


CREATE TABLE KITAP_BULUNUR (
    kitap_miktari INT
    
);
GO


CREATE TABLE KITAP_KATEGORI (
    kutuphane_ismi NVARCHAR (50),
    kategori_no INT
);
GO


CREATE TABLE KITAP_YAZAR (
    kutuphane_ismi NVARCHAR,
    kitap_adi NVARCHAR
    
    
);

GO


INSERT INTO uyeler (uye_no, uye_ad, uye_soyad, telefon, cinsiyet, eposta, adres_no)
VALUES 
    (1, 'Onurhan', 'Baran', '05314738943', 'Erkek', 'onur@.com', 1),
    (2, 'Ayþe', 'Fatma', '05555678890', 'Kadýn', 'ayse@.com', 2),
    (3, 'Ali', 'Veli', '05459876345', 'Erkek', 'ali@.com', 3),
    (4, 'Batuhan', 'Cekin', '05411111243', 'Erkek', 'batuhan@.com', 4),
    (5, 'Enes', 'Kacan', '05323222980', 'Erkek', 'enes@example.com', 5);


INSERT INTO adresler (adres_no, ulke, sehir, cadde, mahalle, posta_kodu, bina_no)
VALUES 
    (111, 'T', 'K', '10', '3.', 1234, 90),
    (112, 'T', 'A', '11', '4.', 1235, 89),
    (113, 'T', 'M', '12', '5.', 1236, 88),
    (114, 'T', 'Ý', '13', '6.', 1237, 87),
    (115, 'T', 'S', '14', '7.', 1238, 86);


INSERT INTO emanet (emanet_no, uye_no, ISBN, emanet_tarihi, teslim_tarihi)
VALUES 
    (69, 2, 999886, '2023-10-18', '2023-10-22'),
    (70, 1, 999887, '2023-10-21', '2023-10-2'),
   


INSERT INTO kategoriler (kategori_no, kategori_adi)
VALUES 
    (21, 'R'),
    (22, 'F'),
    (23, 'Þ'),
    (24, 'OB'),
    (25, 'K');


INSERT INTO kitaplar (ISBN, kitap_adi, yazar_no, kategori_no, sayfa_sayisi, yayin_tarihi, kutuphane_no)
VALUES 
    (999880, 'HS', 502, 20, 582, '2023-01-15', 1),
    (999881, 'ABST', 512, 20, 650, '2023-02-20', 1),
    (999882, 'S', 522, 20, 293, '2023-03-25', 1),
    (999883, 'KP', 532, 20, 342, '2023-04-10', 1),
    (999884, 'OP', 542, 20, 264, '2023-05-05', 1);

INSERT INTO kutuphaneler (kutuphane_no, kutuphane_ismi, aciklama, adres_no)
VALUES 
    (1, 'KAYSERÝ', 'K.E.K', 674);


INSERT INTO yazarlar (yazar_no, yazar_ad, yazar_soyad)
VALUES 
    (502, 'J', 'V'),
    (512, 'N', 'H'),
    (522, 'H', 'V'),
    (532, 'K', 'C'),
    (542, 'S', 'R');



INSERT INTO kitapbulunur (kitap_miktari)
VALUES 
    (5);


INSERT INTO kitapkategori (kutuphane_ismi, kategori_no)
VALUES 
    ('K.E.K', 25),
   
INSERT INTO kitapyazar (kutuphane_ismi, kitap_adi)
VALUES 
    ('K.E.K', 'ABST'),
    ('K.E.K', 'HS'),
    ('K.E.K', 'S'),
    ('K.E.K', 'KP'),
    ('K.E.K', 'OP);




SELECT * FROM uyeler
SELECT * FROM adresler
SELECT * FROM emanet
SELECT * FROM kategoriler
SELECT* FROM kitaplar
SELECT * FROM kutuphaneler
SELECT* FROM yazarlar
SELECT * FROM kitapbulunur
SELECT * FROM kitapkategori
SELECT * FROM kitapyazar