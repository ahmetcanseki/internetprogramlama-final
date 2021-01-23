-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 23 Oca 2021, 17:57:05
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `websitem`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bilgi`
--

CREATE TABLE `bilgi` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `isim` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `icerik` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `bilgi`
--

INSERT INTO `bilgi` (`id`, `isim`, `icerik`) VALUES
(1, 'Site Sahibi', 'Ahmet Can Seki'),
(2, 'Hakkımızda', '1998 yılında Mersin\'de doğdum. İlköğretim ve Lise yıllarımı Mersin\'in Tarsus ilçesinde geçirdim. Burdur Mehmet Akif Ersoy Üniversitesi\'nde Yönetim Bilişim Sistemleri bölümü öğrencisiyim.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `egitim`
--

CREATE TABLE `egitim` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `adi` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `tipi` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `baslama` year(4) NOT NULL,
  `bitis` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `egitim`
--

INSERT INTO `egitim` (`id`, `adi`, `tipi`, `baslama`, `bitis`) VALUES
(1, 'Sadık Eliyeşil Ortaokulu', 'Orta Öğretim', 2011, 2015),
(2, 'Burdur Mehmet Akif Ersoy Üniversitesi - Yönetim Bilişim Sistemleri', 'Lisans', 2016, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `id` int(10) UNSIGNED NOT NULL,
  `ad` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`id`, `ad`) VALUES
(1, 'g1'),
(2, 'g2'),
(3, 'g3'),
(4, 'g4'),
(5, 'g5'),
(9, 'music'),
(10, 'space'),
(12, 'nt7');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `isim` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `soyisim` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `eposta` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sifre` varchar(512) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `isim`, `soyisim`, `eposta`, `sifre`) VALUES
(1, 'Ahmet Can', 'Seki', 'ahmetcanseki@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `id` int(10) UNSIGNED NOT NULL,
  `ad` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `eposta` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` varchar(120) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `ad`, `soyad`, `eposta`, `mesaj`) VALUES
(1, 'Ali', 'Kara', 'alikara@gmail.com', 'Süper olmuş. Tasarıma bayıldım...'),
(4, 'Cristiano', 'Ronaldo', 'cr7@gmail.com', 'Tebrik ederim çok güzel olmuş.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slayt`
--

CREATE TABLE `slayt` (
  `id` int(10) UNSIGNED NOT NULL,
  `adi` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `slayt`
--

INSERT INTO `slayt` (`id`, `adi`) VALUES
(14, 'a1'),
(15, 'a2'),
(17, 'n5');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bilgi`
--
ALTER TABLE `bilgi`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `egitim`
--
ALTER TABLE `egitim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eposta` (`eposta`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slayt`
--
ALTER TABLE `slayt`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bilgi`
--
ALTER TABLE `bilgi`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `egitim`
--
ALTER TABLE `egitim`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `slayt`
--
ALTER TABLE `slayt`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
